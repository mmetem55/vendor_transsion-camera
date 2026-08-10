.class public Lcom/transsion/camera/app/ui/BaseAppUI;
.super Ljava/lang/Object;
.source "BaseAppUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/BaseAppUI$EditWaterMarkFragmentStateListenerImpl;,
        Lcom/transsion/camera/app/ui/BaseAppUI$OnEditorFragmentStateListenerImpl;,
        Lcom/transsion/camera/app/ui/BaseAppUI$RemoteCaptureFragmentStateListenerImpl;,
        Lcom/transsion/camera/app/ui/BaseAppUI$OnFragmentStateListenerImpl;,
        Lcom/transsion/camera/app/ui/BaseAppUI$OnTouchListenerImpl;,
        Lcom/transsion/camera/app/ui/BaseAppUI$CameraSwitchListenerImpl;,
        Lcom/transsion/camera/app/ui/BaseAppUI$ModeChangedListenerImpl;,
        Lcom/transsion/camera/app/ui/BaseAppUI$SwitchDualAndMainCameraListenerImpl;,
        Lcom/transsion/camera/app/ui/BaseAppUI$SwitchDualCamBWCameraListenerImpl;,
        Lcom/transsion/camera/app/ui/BaseAppUI$SwitchBlurCameraListenerImpl;,
        Lcom/transsion/camera/app/ui/BaseAppUI$SwitchPeriscopeCameraListenerImpl;,
        Lcom/transsion/camera/app/ui/BaseAppUI$SwitchTeleCameraListenerImpl;,
        Lcom/transsion/camera/app/ui/BaseAppUI$SwitchHighDefinitionCameraListenerImpl;,
        Lcom/transsion/camera/app/ui/BaseAppUI$SwitchWideCameraListenerImpl;,
        Lcom/transsion/camera/app/ui/BaseAppUI$FragmentListenerImpl;,
        Lcom/transsion/camera/app/ui/BaseAppUI$UIHandler;,
        Lcom/transsion/camera/app/ui/BaseAppUI$ShutterResponseListener;,
        Lcom/transsion/camera/app/ui/BaseAppUI$ThumbnailListenerWrap;
    }
.end annotation


# static fields
.field private static final COLUMN_INTERPOLATOR_IN:Landroid/view/animation/PathInterpolator;

.field private static final COLUMN_INTERPOLATOR_OUT:Landroid/view/animation/PathInterpolator;

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field protected mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

.field private mAeAfLock:Lcom/transsion/camera/app/common/mode/IAeAfLock;

.field private final mAlphaPathInterpolator:Landroid/view/animation/PathInterpolator;

.field private mAlreadyGotoAR:Z

.field private mAodUIOrientation:I

.field private mAppStorageManager:Lcom/transsion/camera/app/common/storage/AppStorageManager;

.field protected mArActivityCoverLayout:Landroid/widget/FrameLayout;

.field protected mBelowMainCtrlInflateRoot:Landroid/view/ViewGroup;

.field private mBottomBarHoverAnimator:Landroid/animation/ValueAnimator;

.field private mBottomBarIn:Landroid/animation/ObjectAnimator;

.field private mBottomBarOut:Landroid/animation/ObjectAnimator;

.field protected mBottomBarRootView:Landroid/view/View;

.field private mBrowserLastBurstUri:Landroid/net/Uri;

.field protected mCameraOperateAction:Lcom/transsion/camera/app/common/mode/CameraOperateAction;

.field protected mCameraReConnectListener:Lcom/transsion/camera/app/common/IAppUIListener$ICameraReConnectListener;

.field private mCameraSwitchFlag:Z

.field private mCameraSwitchListener:Lcom/transsion/camera/app/common/IAppUIListener$ICameraSwitchListener;

.field protected mCameraSwitcherUIManager:Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;

.field protected final mContext:Landroid/content/Context;

.field protected mContinuousShotUIManager:Lcom/transsion/camera/app/ui/manager/ContinuousShotUIManager;

.field private mCurrentAppUIState:I

.field private mCurrentModeName:Ljava/lang/String;

.field protected mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

.field private mDelayTime:I

.field protected mEditWaterMarkManager:Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;

.field private mFirstSteadyFrameFlag:Z

.field protected mFoldUIManager:Lcom/transsion/camera/app/common/manager/AbstractFoldUIManager;

.field private mFrameOnceCome:Z

.field protected mFromIntent:Z

.field protected mGoogleLensUIManager:Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager;

.field protected mGotoActivityListener:Lcom/transsion/camera/app/common/IAppUIListener$IGotoActivityListener;

.field protected final mGpuAlgorithmManager:Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;

.field protected mHelpGuideUIManager:Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

.field private mHideShutter:Z

.field private mHideShutterFromSelfTimer:Z

.field protected mHintRootLayout:Landroid/view/ViewGroup;

.field protected mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

.field protected mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

.field private mIntercept:Z

.field private mIsModePickerSink:Z

.field private volatile mIsPaused:Z

.field protected mIsThumbnailAnimationNeed:Z

.field private mIsVideoRecording:Z

.field protected mLayoutInflater:Landroid/view/LayoutInflater;

.field private final mLockObj:Ljava/lang/Object;

.field protected mMainCtrlLayerRootParent:Landroid/view/ViewGroup;

.field private mMainRootAnimatorIn:Landroid/animation/ObjectAnimator;

.field protected mModeAboveMainCtrlInflateRoot:Landroid/view/ViewGroup;

.field protected mModeChangeListener:Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;

.field protected mModeDataInfoListener:Lcom/transsion/camera/app/common/IAppUIListener$IModeDataInfoListener;

.field private mModeFeatureSupport:Lcom/transsion/camera/app/common/mode/IModeFeatureSupport;

.field protected mModeInflateRoot:Landroid/view/ViewGroup;

.field protected mModeInflateScrollRoot:Landroid/view/ViewGroup;

.field protected mModeOrderEditorManager:Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;

.field protected mModePanelRootParent:Landroid/view/ViewGroup;

.field private mModePickerLayout:Landroid/view/View;

.field protected mModePickerRootView:Landroid/view/ViewGroup;

.field protected mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

.field private mModePikerArrowRoot:Landroid/view/View;

.field protected final mModeScrollListener:Lcom/transsion/camera/app/ui/IModeScrollUI$ModeScrollListener;

.field private mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

.field protected mModeUIControl:Lcom/transsion/camera/app/common/IAppUIControl$IModeUIControl;

.field private mMoreModeGuideLeftRoot:Landroid/view/View;

.field private mMoreModeGuideRightRoot:Landroid/view/View;

.field private mNeedChangeScreenForm:Z

.field private mOnCompleteAllowed:Z

.field private mOnceLensDirtyHint:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private mOnceLowPowerHint:Lcom/transsion/camera/app/common/ui/HintInfo;

.field mOpenOnly:Z

.field protected mOrientation:I

.field private mOverlayManagerFinished:Z

.field protected mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

.field protected mOverlayUIRoot:Landroid/view/ViewGroup;

.field private final mPathInterpolator:Landroid/view/animation/PathInterpolator;

.field private mPhotoIntent:Z

.field protected mPreviewBackgroundOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

.field protected mPreviewGestureManager:Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;

.field protected mPreviewGestureScrollAdapter:Lcom/transsion/camera/app/ui/PreviewGestureScrollAdapter;

.field protected mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

.field protected mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

.field protected final mRawActionCallback:Lcom/transsion/camera/app/common/mode/CameraOperateAction$RawActionHandleCallback;

.field private mRecordingOrientation:I

.field protected mRemoteCaptureManager:Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;

.field protected mRingScreenLightResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

.field protected mRingScreenLightUIManager:Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;

.field private mRootAnimatorInSet:Landroid/animation/AnimatorSet;

.field private mRootAnimatorOutSet:Landroid/animation/AnimatorSet;

.field protected mRootView:Landroid/view/ViewGroup;

.field protected mScreenFormResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

.field private final mScreenFormTypeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/IScreenFormControl;",
            ">;"
        }
    .end annotation
.end field

.field protected final mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

.field protected mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

.field protected mScrollModeIndex:I

.field protected mSecureCamera:Z

.field protected mSelfTimerResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

.field protected mSettingFragmentManager:Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;

.field protected mSettingUIProvider:Lcom/transsion/camera/app/common/provider/SettingUIProvider;

.field private mShouldHideGoogleLensUI:Z

.field private mShouldHideSwitcher:Z

.field private mShouldHideThumbnailUI:Z

.field private mShutterAnimatorFlag:Z

.field private mShutterAnimatorSet:Landroid/animation/AnimatorSet;

.field protected mShutterPanelRootView:Landroid/view/ViewGroup;

.field private mShutterType:I

.field protected mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

.field private mSinkAnimatorSet:Landroid/animation/AnimatorSet;

.field private mSpecialCameraChange:Z

.field protected mSpecifyModePolicy:Lcom/transsion/camera/app/SpecifyModePolicy;

.field protected mSupportFoldUIType:I

.field private mSwitchBlurCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchBlurCameraListener;

.field private mSwitchDualAndMainCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchDualAndMainCameraListener;

.field private mSwitchDualCamBWListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchDualCamBWCameraListener;

.field private mSwitchHighDefinitionCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchHighDefinitionCameraListener;

.field private mSwitchPeriscopeCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchPeriscopeCameraListener;

.field private mSwitchSatCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchSatCameraListener;

.field private mSwitchTeleCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchLogicalCameraListener;

.field private mSwitchWideCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;

.field private mSystemUIViewListener:Lcom/transsion/camera/app/common/IAppUIListener$ISystemUIViewListener;

.field protected mThermalThrottleUIManager:Lcom/transsion/camera/app/ui/manager/ThermalThrottleUIManager;

.field protected mThumbnailUIManager:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

.field protected mToastLayout:Landroid/widget/FrameLayout;

.field protected mToastUIManager:Lcom/transsion/camera/app/ui/manager/ToastUIManager;

.field protected mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

.field private mTriggerSelfTimerPriority:I

.field private final mUIHandler:Lcom/transsion/camera/app/ui/BaseAppUI$UIHandler;

.field protected final mUILayerRootParentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mUIManagerSetup:Z

.field protected final mUIManagers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/manager/AbstractViewManager;",
            ">;"
        }
    .end annotation
.end field

.field private mUISinkModeChange:Z

.field protected mVIPCaptureManager:Lcom/transsion/camera/app/common/manager/AbstractFoldUIManager;

.field private mVideoIntent:Z

.field private mVoiceInteraction:Z

.field private mVoiceParameters:[Z

.field protected mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

.field private final mZoomKeyEventCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/IAppUIControl$IZoomKeyEventCallback;",
            ">;"
        }
    .end annotation
.end field

.field private modeNotifyCameraOperateActionCallback:Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;


# direct methods
.method public static synthetic $r8$lambda$1ep0xXDu2qXZNS3PoI8p712YeIA(Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;)Z
    .locals 0

    invoke-static {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->lambda$doUpdateTopBarSettingUIList$8(Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$DPKKAU2EZc3N2F_Ju-tUEuAQZhI(Lcom/transsion/camera/app/ui/BaseAppUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->lambda$updateCustomState$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$RQ_7qIsy3wX270hSq-Ut71FRSmw(ZLcom/transsion/camera/app/common/IAppUIControl$IZoomKeyEventCallback;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/BaseAppUI;->lambda$onZoomScaling$4(ZLcom/transsion/camera/app/common/IAppUIControl$IZoomKeyEventCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Sr4-yXlvrasnAZkwII-qjy_35Yw(ZLcom/transsion/camera/app/common/IAppUIControl$IZoomKeyEventCallback;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/BaseAppUI;->lambda$onZoomScaleStart$3(ZLcom/transsion/camera/app/common/IAppUIControl$IZoomKeyEventCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$W_Sl8DGSBGRcdyW0TX85C7Rrp24(Lcom/transsion/camera/app/ui/BaseAppUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->doLoadHintUIManager()V

    return-void
.end method

.method public static synthetic $r8$lambda$WgJvctVrU0Bgeas5sRCDqjLG5ek(Lcom/transsion/camera/app/ui/BaseAppUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->lambda$delayLoadUIManager$7()V

    return-void
.end method

.method public static synthetic $r8$lambda$ZHdx4lNWPyapEG9pdSimI3l8C6c(Lcom/transsion/camera/app/ui/BaseAppUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->doVoiceCapture()V

    return-void
.end method

.method public static synthetic $r8$lambda$eGQm7H9pLiElakyGWR7EuGMpPZc(Lcom/transsion/camera/app/ui/BaseAppUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->onUIManagerReady()V

    return-void
.end method

.method public static synthetic $r8$lambda$fmhealgIRpZaRCYn8nIP7nYNBiU(Lcom/transsion/camera/app/ui/BaseAppUI;ZLandroid/view/ViewGroup$MarginLayoutParams;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/ui/BaseAppUI;->lambda$updateBottomBarLayoutForOnlyHover$10(ZLandroid/view/ViewGroup$MarginLayoutParams;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mbvUgCZ5WMOW8YNL4D5W1ojAPXM(Lcom/transsion/camera/app/ui/BaseAppUI;)Z
    .locals 0

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->lambda$doDelayLoadUIManager$6()Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$vaJj_kE-XlOBHZOXbpMoy6NtFIk(Lcom/transsion/camera/app/ui/BaseAppUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->lambda$updateCustomState$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$xV2Gtj1v11RgnGQxSqvKf6la3kg(Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;)Z
    .locals 0

    invoke-static {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->lambda$doUpdateTopBarSettingUIList$9(Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$xbo7cK7zTuzVX_vT3ze0D_qYTuk(ZLcom/transsion/camera/app/common/IAppUIControl$IZoomKeyEventCallback;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/BaseAppUI;->lambda$onZoomClick$2(ZLcom/transsion/camera/app/common/IAppUIControl$IZoomKeyEventCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xuk35Wg6VS_C2Fk_nq4UmCdRhBk(ZLcom/transsion/camera/app/common/IAppUIControl$IZoomKeyEventCallback;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/BaseAppUI;->lambda$onZoomScaleEnd$5(ZLcom/transsion/camera/app/common/IAppUIControl$IZoomKeyEventCallback;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 146
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 336
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd    # 0.4f

    const/4 v2, 0x0

    const v3, 0x3e4ccccd    # 0.2f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/camera/app/ui/BaseAppUI;->COLUMN_INTERPOLATOR_OUT:Landroid/view/animation/PathInterpolator;

    .line 337
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const v3, 0x3f28f5c3    # 0.66f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/camera/app/ui/BaseAppUI;->COLUMN_INTERPOLATOR_IN:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;)V
    .locals 7

    .line 412
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 167
    iput v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentAppUIState:I

    const/4 v1, -0x1

    .line 168
    iput v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOrientation:I

    .line 170
    iput v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mAodUIOrientation:I

    const/4 v2, 0x0

    .line 176
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mFrameOnceCome:Z

    .line 177
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSecureCamera:Z

    .line 178
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mVoiceInteraction:Z

    .line 179
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCameraSwitchFlag:Z

    .line 181
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsPaused:Z

    .line 184
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPhotoIntent:Z

    .line 185
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mVideoIntent:Z

    const/4 v3, 0x0

    .line 187
    iput-object v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mVoiceParameters:[Z

    .line 188
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mFromIntent:Z

    .line 190
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUISinkModeChange:Z

    .line 191
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOpenOnly:Z

    .line 192
    iput v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mDelayTime:I

    .line 198
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIntercept:Z

    .line 199
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mFirstSteadyFrameFlag:Z

    .line 201
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsModePickerSink:Z

    .line 202
    iput v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScrollModeIndex:I

    .line 204
    iput v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterType:I

    .line 206
    iput v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSupportFoldUIType:I

    .line 216
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOnCompleteAllowed:Z

    .line 221
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShouldHideThumbnailUI:Z

    .line 222
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShouldHideGoogleLensUI:Z

    .line 226
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mLockObj:Ljava/lang/Object;

    .line 233
    iput-object v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModeInflateRoot:Landroid/view/ViewGroup;

    .line 246
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUILayerRootParentList:Ljava/util/List;

    .line 321
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIManagers:Ljava/util/List;

    .line 323
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenFormTypeListeners:Ljava/util/List;

    .line 325
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v3, 0x3e800000    # 0.25f

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v0, v3, v4, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 327
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v3, 0x3ea8f5c3    # 0.33f

    const v6, 0x3f28f5c3    # 0.66f

    invoke-direct {v0, v3, v4, v6, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mAlphaPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 339
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mZoomKeyEventCallbacks:Ljava/util/List;

    .line 341
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsVideoRecording:Z

    .line 342
    iput v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRecordingOrientation:I

    .line 344
    new-instance v0, Lcom/transsion/camera/app/ui/BaseAppUI$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/BaseAppUI$1;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRawActionCallback:Lcom/transsion/camera/app/common/mode/CameraOperateAction$RawActionHandleCallback;

    .line 362
    new-instance v0, Lcom/transsion/camera/app/ui/BaseAppUI$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/BaseAppUI$2;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModeScrollListener:Lcom/transsion/camera/app/ui/IModeScrollUI$ModeScrollListener;

    .line 413
    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    .line 414
    iput-object p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    .line 415
    new-instance v0, Lcom/transsion/camera/app/ui/BaseAppUI$UIHandler;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/BaseAppUI$UIHandler;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIHandler:Lcom/transsion/camera/app/ui/BaseAppUI$UIHandler;

    .line 416
    new-instance v0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;

    invoke-direct {v0, p1, p2}, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/common/manager/IScreenManager;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mGpuAlgorithmManager:Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;

    .line 417
    sget-object p2, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mGpuAlgorithmManager: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 418
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0500b1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsThumbnailAnimationNeed:Z

    return-void
.end method

.method static synthetic access$000()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 144
    sget-object v0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/transsion/camera/app/ui/BaseAppUI;)Z
    .locals 0

    .line 144
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsPaused:Z

    return p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/app/ui/BaseAppUI;)Z
    .locals 0

    .line 144
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->isMainThread()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2200(Lcom/transsion/camera/app/ui/BaseAppUI;IILjava/lang/String;)V
    .locals 0

    .line 144
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/ui/BaseAppUI;->doUpdateUIState(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/transsion/camera/app/ui/BaseAppUI;)V
    .locals 0

    .line 144
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->doUpdateHelpGuide()V

    return-void
.end method

.method static synthetic access$2400(Lcom/transsion/camera/app/ui/BaseAppUI;)V
    .locals 0

    .line 144
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->doUpdateTopBarSettingUIList()V

    return-void
.end method

.method static synthetic access$2500(Lcom/transsion/camera/app/ui/BaseAppUI;)V
    .locals 0

    .line 144
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->doUpdateInteractiveUIList()V

    return-void
.end method

.method static synthetic access$2600(Lcom/transsion/camera/app/ui/BaseAppUI;Z)V
    .locals 0

    .line 144
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/BaseAppUI;->doUpdateOverlaySettingUIList(Z)V

    return-void
.end method

.method static synthetic access$2700(Lcom/transsion/camera/app/ui/BaseAppUI;)V
    .locals 0

    .line 144
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->doUpdateTopBarAndOptionBar()V

    return-void
.end method

.method static synthetic access$2800(Lcom/transsion/camera/app/ui/BaseAppUI;I)V
    .locals 0

    .line 144
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/BaseAppUI;->notifyCameraStateToUI(I)V

    return-void
.end method

.method static synthetic access$2900(Lcom/transsion/camera/app/ui/BaseAppUI;)V
    .locals 0

    .line 144
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->doDelayLoadUIManager()V

    return-void
.end method

.method static synthetic access$300(Lcom/transsion/camera/app/ui/BaseAppUI;I)V
    .locals 0

    .line 144
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/BaseAppUI;->onCameraOperateAction(I)V

    return-void
.end method

.method static synthetic access$3000(Lcom/transsion/camera/app/ui/BaseAppUI;IZ)V
    .locals 0

    .line 144
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/BaseAppUI;->doUpdateShutterType(IZ)V

    return-void
.end method

.method static synthetic access$3100(Lcom/transsion/camera/app/ui/BaseAppUI;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 144
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/BaseAppUI;->doShowCustomPreviewCover(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/transsion/camera/app/ui/BaseAppUI;)V
    .locals 0

    .line 144
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->doHideCustomPreviewCover()V

    return-void
.end method

.method static synthetic access$3300(Lcom/transsion/camera/app/ui/BaseAppUI;)V
    .locals 0

    .line 144
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->doVoiceCapture()V

    return-void
.end method

.method static synthetic access$3400(Lcom/transsion/camera/app/ui/BaseAppUI;Z)V
    .locals 0

    .line 144
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/BaseAppUI;->onShowOrHideSystemUIView(Z)V

    return-void
.end method

.method static synthetic access$3500(Lcom/transsion/camera/app/ui/BaseAppUI;)V
    .locals 0

    .line 144
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->enterSettingFragment()V

    return-void
.end method

.method static synthetic access$3600(Lcom/transsion/camera/app/ui/BaseAppUI;)Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;
    .locals 0

    .line 144
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSwitchWideCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/transsion/camera/app/ui/BaseAppUI;)Z
    .locals 0

    .line 144
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSpecialCameraChange:Z

    return p0
.end method

.method static synthetic access$3800(Lcom/transsion/camera/app/ui/BaseAppUI;)Lcom/transsion/camera/app/common/IAppUIListener$ISwitchHighDefinitionCameraListener;
    .locals 0

    .line 144
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSwitchHighDefinitionCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchHighDefinitionCameraListener;

    return-object p0
.end method

.method static synthetic access$3900(Lcom/transsion/camera/app/ui/BaseAppUI;)Lcom/transsion/camera/app/common/IAppUIListener$ISwitchLogicalCameraListener;
    .locals 0

    .line 144
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSwitchTeleCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchLogicalCameraListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/app/ui/BaseAppUI;)Ljava/lang/Object;
    .locals 0

    .line 144
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mLockObj:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$4000(Lcom/transsion/camera/app/ui/BaseAppUI;)Lcom/transsion/camera/app/common/IAppUIListener$ISwitchPeriscopeCameraListener;
    .locals 0

    .line 144
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSwitchPeriscopeCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchPeriscopeCameraListener;

    return-object p0
.end method

.method static synthetic access$4100(Lcom/transsion/camera/app/ui/BaseAppUI;)Lcom/transsion/camera/app/common/IAppUIListener$ISwitchBlurCameraListener;
    .locals 0

    .line 144
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSwitchBlurCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchBlurCameraListener;

    return-object p0
.end method

.method static synthetic access$4200(Lcom/transsion/camera/app/ui/BaseAppUI;)Lcom/transsion/camera/app/common/IAppUIListener$ISwitchDualCamBWCameraListener;
    .locals 0

    .line 144
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSwitchDualCamBWListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchDualCamBWCameraListener;

    return-object p0
.end method

.method static synthetic access$4400(Lcom/transsion/camera/app/ui/BaseAppUI;)V
    .locals 0

    .line 144
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->enterARDrawlineMode()V

    return-void
.end method

.method static synthetic access$4500(Lcom/transsion/camera/app/ui/BaseAppUI;)V
    .locals 0

    .line 144
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->enterARCoreMode()V

    return-void
.end method

.method static synthetic access$4600(Lcom/transsion/camera/app/ui/BaseAppUI;)Lcom/transsion/camera/app/common/IAppUIListener$ICameraSwitchListener;
    .locals 0

    .line 144
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCameraSwitchListener:Lcom/transsion/camera/app/common/IAppUIListener$ICameraSwitchListener;

    return-object p0
.end method

.method static synthetic access$4702(Lcom/transsion/camera/app/ui/BaseAppUI;Z)Z
    .locals 0

    .line 144
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCameraSwitchFlag:Z

    return p1
.end method

.method static synthetic access$4800(Lcom/transsion/camera/app/ui/BaseAppUI;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 144
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mBottomBarIn:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method static synthetic access$4900(Lcom/transsion/camera/app/ui/BaseAppUI;)Landroid/view/View;
    .locals 0

    .line 144
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerLayout:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/app/ui/BaseAppUI;)Lcom/transsion/camera/app/ui/BaseAppUI$UIHandler;
    .locals 0

    .line 144
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIHandler:Lcom/transsion/camera/app/ui/BaseAppUI$UIHandler;

    return-object p0
.end method

.method static synthetic access$5000(Lcom/transsion/camera/app/ui/BaseAppUI;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 144
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootAnimatorInSet:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$5100(Lcom/transsion/camera/app/ui/BaseAppUI;IZ)V
    .locals 0

    .line 144
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/BaseAppUI;->notifyAllScreenFormListeners(IZ)V

    return-void
.end method

.method static synthetic access$5200(Lcom/transsion/camera/app/ui/BaseAppUI;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 144
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mMainRootAnimatorIn:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/app/ui/BaseAppUI;)Ljava/lang/String;
    .locals 0

    .line 144
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$602(Lcom/transsion/camera/app/ui/BaseAppUI;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeName:Ljava/lang/String;

    return-object p1
.end method

.method private delayLoadUIManager()V
    .locals 5

    .line 2074
    sget-object v0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[delayLoadUIManager] start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string v1, "delayLoadUIManager"

    .line 2075
    invoke-static {v1}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 2076
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    const v2, 0x7f0900f4

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 2077
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mFoldUIManager:Lcom/transsion/camera/app/common/manager/AbstractFoldUIManager;

    if-eqz v2, :cond_0

    .line 2078
    iget-object v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v2, v3, v1, v4}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->inflateLayout(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    :cond_0
    const/4 v1, 0x1

    .line 2080
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/BaseAppUI;->doUpdateOverlaySettingUIList(Z)V

    .line 2082
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    if-eqz v1, :cond_1

    .line 2083
    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->showModePickerGuide()V

    .line 2084
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->showMoreModeGuideAnim()V

    .line 2087
    :cond_1
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIHandler:Lcom/transsion/camera/app/ui/BaseAppUI$UIHandler;

    new-instance v2, Lcom/transsion/camera/app/ui/BaseAppUI$$ExternalSyntheticLambda11;

    invoke-direct {v2, p0}, Lcom/transsion/camera/app/ui/BaseAppUI$$ExternalSyntheticLambda11;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2088
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIHandler:Lcom/transsion/camera/app/ui/BaseAppUI$UIHandler;

    new-instance v2, Lcom/transsion/camera/app/ui/BaseAppUI$$ExternalSyntheticLambda12;

    invoke-direct {v2, p0}, Lcom/transsion/camera/app/ui/BaseAppUI$$ExternalSyntheticLambda12;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2089
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIHandler:Lcom/transsion/camera/app/ui/BaseAppUI$UIHandler;

    new-instance v2, Lcom/transsion/camera/app/ui/BaseAppUI$$ExternalSyntheticLambda13;

    invoke-direct {v2, p0}, Lcom/transsion/camera/app/ui/BaseAppUI$$ExternalSyntheticLambda13;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2091
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIHandler:Lcom/transsion/camera/app/ui/BaseAppUI$UIHandler;

    new-instance v2, Lcom/transsion/camera/app/ui/BaseAppUI$$ExternalSyntheticLambda14;

    invoke-direct {v2, p0}, Lcom/transsion/camera/app/ui/BaseAppUI$$ExternalSyntheticLambda14;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2099
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIHandler:Lcom/transsion/camera/app/ui/BaseAppUI$UIHandler;

    new-instance v2, Lcom/transsion/camera/app/ui/BaseAppUI$$ExternalSyntheticLambda15;

    invoke-direct {v2, p0}, Lcom/transsion/camera/app/ui/BaseAppUI$$ExternalSyntheticLambda15;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-string p0, "[delayLoadUIManager] end"

    .line 2100
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2101
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    return-void
.end method

.method private doDelayLoadUIManager()V
    .locals 4

    .line 2063
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->hasWindowFocus()Z

    move-result v0

    .line 2064
    sget-object v1, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[doDelayLoadUIManager] mRootView hasWindowFocus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2066
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIHandler:Lcom/transsion/camera/app/ui/BaseAppUI$UIHandler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/ui/BaseAppUI$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/BaseAppUI$$ExternalSyntheticLambda10;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;)V

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    return-void
.end method

.method private doHideCustomPreviewCover()V
    .locals 0

    .line 536
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->hideCustomPreviewCover()V

    return-void
.end method

.method private doLoadHintUIManager()V
    .locals 4

    .line 2105
    sget-object v0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[doLoadHintUIManager] start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2106
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintRootLayout:Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 2107
    new-instance v1, Lcom/transsion/camera/app/ui/manager/HintUIManager;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-direct {v1, v2, p0, p0}, Lcom/transsion/camera/app/ui/manager/HintUIManager;-><init>(Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUIControl$IModePickerControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;)V

    iput-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    .line 2108
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIManagers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2109
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintRootLayout:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v1, v2, v3}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->inflateLayout(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    .line 2110
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    iget v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOrientation:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/transsion/camera/app/ui/manager/HintUIManager;->onOrientationChanged(IZ)V

    .line 2111
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/BaseAppUI;->registerScreenFormListener(Lcom/transsion/camera/app/common/IScreenFormControl;)V

    .line 2112
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/BaseAppUI;->registerPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    .line 2114
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOnceLowPowerHint:Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2115
    iget-object v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    invoke-virtual {v3, v1}, Lcom/transsion/camera/app/ui/manager/HintUIManager;->showLowPowerHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 2116
    iput-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOnceLowPowerHint:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 2118
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOnceLensDirtyHint:Lcom/transsion/camera/app/common/ui/HintInfo;

    if-eqz v1, :cond_1

    .line 2119
    iget-object v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    invoke-virtual {v3, v1}, Lcom/transsion/camera/app/ui/manager/HintUIManager;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 2120
    iput-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOnceLensDirtyHint:Lcom/transsion/camera/app/common/ui/HintInfo;

    :cond_1
    const-string p0, "[doLoadHintUIManager] end"

    .line 2123
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private doShowCustomPreviewCover(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 532
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->showCustomPreviewCover(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private doUpdateHelpGuide()V
    .locals 4

    .line 2316
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHelpGuideUIManager:Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

    if-eqz v1, :cond_1

    .line 2317
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getModeGuideLayoutsArrayId()I

    move-result v0

    .line 2318
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getSettingGuideLayoutsArrayId()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 2321
    iget-object v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingUIProvider:Lcom/transsion/camera/app/common/provider/SettingUIProvider;

    if-eqz v3, :cond_0

    .line 2322
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    .line 2323
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 2322
    invoke-virtual {v3, v1}, Lcom/transsion/camera/app/common/provider/SettingUIProvider;->createSettingGuideItemUIList([Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 2326
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHelpGuideUIManager:Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

    invoke-virtual {p0, v0, v2}, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->setGuideItemList(ILjava/util/List;)V

    :cond_1
    return-void
.end method

.method private doUpdateInteractiveUIList()V
    .locals 4

    .line 2473
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingUIProvider:Lcom/transsion/camera/app/common/provider/SettingUIProvider;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    if-eqz v0, :cond_2

    .line 2475
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-eqz v0, :cond_0

    .line 2476
    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v0

    .line 2477
    sget-object v1, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[doUpdateInteractiveUIList] currentCameraId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSpecialCameraChange:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "0"

    .line 2479
    :goto_0
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getModeInteractiveSettingUIEntries()[Ljava/lang/String;

    move-result-object v1

    .line 2480
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingUIProvider:Lcom/transsion/camera/app/common/provider/SettingUIProvider;

    invoke-virtual {v2, v1}, Lcom/transsion/camera/app/common/provider/SettingUIProvider;->getCommonSettingUIList([Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 2481
    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSpecialCameraChange:Z

    if-nez v2, :cond_1

    .line 2482
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    invoke-virtual {v2, v1, v0}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->setCommonSettingUIList(Ljava/util/List;Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    .line 2484
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSpecialCameraChange:Z

    .line 2486
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getOptionSettingUIEntries()[Ljava/lang/String;

    move-result-object v0

    .line 2487
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingUIProvider:Lcom/transsion/camera/app/common/provider/SettingUIProvider;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v3}, Lcom/transsion/camera/app/common/provider/SettingUIProvider;->getTopBarItemUIList([Ljava/lang/String;Ljava/util/List;Landroid/graphics/drawable/Drawable;)Ljava/util/List;

    move-result-object v0

    .line 2488
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    invoke-virtual {v2, v0}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->setOptionSettingUIList(Ljava/util/List;)V

    if-eqz v1, :cond_2

    .line 2490
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeName:Ljava/lang/String;

    const-string v1, "com.transsion.camera.feature.mode.more.MoreModeEntry"

    .line 2491
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentAppUIState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    .line 2492
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->show()V

    :cond_2
    return-void
.end method

.method private doUpdateOverlaySettingUIList(Z)V
    .locals 7

    .line 2384
    sget-object v0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[doUpdateOverlaySettingUIList] start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2386
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 2390
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayManagerFinished:Z

    .line 2391
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    const/4 v3, 0x1

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingUIProvider:Lcom/transsion/camera/app/common/provider/SettingUIProvider;

    if-eqz v2, :cond_7

    .line 2393
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-eqz v2, :cond_1

    .line 2394
    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v2

    .line 2395
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[doUpdateOverlaySettingUIList] currentCameraId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v2, "0"

    .line 2398
    :goto_0
    iget-object v4, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    iget-object v5, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModeFeatureSupport:Lcom/transsion/camera/app/common/mode/IModeFeatureSupport;

    invoke-virtual {v4, v5}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->setModeFeatureSupport(Lcom/transsion/camera/app/common/mode/IModeFeatureSupport;)V

    .line 2399
    iget-object v4, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    iget-object v5, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mAeAfLock:Lcom/transsion/camera/app/common/mode/IAeAfLock;

    invoke-virtual {v4, v5}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->setAeAfLock(Lcom/transsion/camera/app/common/mode/IAeAfLock;)V

    .line 2401
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->updateOverlayManagerSettingUIList()V

    .line 2403
    iget-object v4, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    if-eqz v4, :cond_7

    .line 2404
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v4

    .line 2405
    invoke-interface {v4, v2}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getCameraInfo(Ljava/lang/String;)Lcom/transsion/camera/adapter/ICameraInfo;

    move-result-object v4

    invoke-interface {v4}, Lcom/transsion/camera/adapter/ICameraInfo;->getFacing()I

    move-result v4

    if-nez v4, :cond_2

    move v4, v3

    goto :goto_1

    :cond_2
    move v4, v1

    :goto_1
    if-eqz v4, :cond_4

    .line 2409
    iget-object v5, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {v5}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getModeOffsetPadding()I

    move-result v5

    if-lez v5, :cond_3

    .line 2410
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    iget-object v5, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {v5}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getModeOffsetPadding()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->setOffsetPadding(I)V

    goto :goto_2

    .line 2412
    :cond_3
    iget-object v5, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    invoke-virtual {v5, v1}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->setOffsetPadding(I)V

    .line 2414
    :goto_2
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getWideCameraSettingUIEntries()[Ljava/lang/String;

    move-result-object v1

    .line 2415
    iget-object v5, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingUIProvider:Lcom/transsion/camera/app/common/provider/SettingUIProvider;

    invoke-virtual {v5, v1}, Lcom/transsion/camera/app/common/provider/SettingUIProvider;->createWideCameraItemUIList([Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 2416
    iget-object v5, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    iget-object v6, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {v6}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getSecondDefaultZoomValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->setSecondDefaultZoomValue(I)V

    .line 2417
    iget-object v5, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    invoke-virtual {v5, v1, v2}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->setSettingUIList(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_3

    .line 2419
    :cond_4
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getFrontWideCameraSettingUIEntries()[Ljava/lang/String;

    move-result-object v1

    .line 2420
    iget-object v5, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingUIProvider:Lcom/transsion/camera/app/common/provider/SettingUIProvider;

    invoke-virtual {v5, v1}, Lcom/transsion/camera/app/common/provider/SettingUIProvider;->createWideCameraItemUIList([Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 2421
    iget-object v5, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    invoke-virtual {v5, v1, v2}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->setFrontSettingUIList(Ljava/util/List;Ljava/lang/String;)V

    .line 2424
    :goto_3
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeName:Ljava/lang/String;

    const-string v2, "com.transsion.camera.feature.mode.video.TimeLapseVideoModeEntry"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v2, 0x7b

    if-eqz v1, :cond_5

    .line 2425
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->notifyCameraOperateActionToUI(I)V

    .line 2428
    :cond_5
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeName:Ljava/lang/String;

    const-string v5, "com.transsion.camera.feature.mode.timelapsemode.TimelapsePhotoModeEntry"

    invoke-static {v1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2429
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->notifyCameraOperateActionToUI(I)V

    .line 2432
    :cond_6
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getModeOffsetPadding()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->setZoomOffsetPadding(I)V

    .line 2433
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    new-instance v2, Lcom/transsion/camera/app/common/ModeConfig;

    iget-object v5, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-direct {v2, v5, v4}, Lcom/transsion/camera/app/common/ModeConfig;-><init>(Lcom/transsion/camera/app/common/ModeSettingUISpec;Z)V

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->updateModeConfigToZoom(Lcom/transsion/camera/app/common/ModeConfig;)V

    .line 2438
    :cond_7
    iget v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOrientation:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_8

    .line 2439
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    invoke-virtual {v2, v1, v3}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->onOrientationChanged(IZ)V

    .line 2440
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    if-eqz v1, :cond_8

    .line 2441
    iget v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOrientation:I

    invoke-virtual {v1, v2, v3}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->onOrientationChanged(IZ)V

    :cond_8
    if-eqz p1, :cond_a

    .line 2447
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    const/16 v1, 0x9

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->notifyCameraOperateActionToUI(I)V

    .line 2448
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    if-eqz p1, :cond_9

    .line 2449
    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->notifyCameraOperateActionToUI(I)V

    .line 2451
    :cond_9
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->notifyCameraOperateActionToUI(I)V

    .line 2452
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    if-eqz p1, :cond_a

    .line 2453
    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->notifyCameraOperateActionToUI(I)V

    .line 2457
    :cond_a
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayManagerFinished:Z

    .line 2458
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIHandler:Lcom/transsion/camera/app/ui/BaseAppUI$UIHandler;

    new-instance v1, Lcom/transsion/camera/app/ui/BaseAppUI$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/BaseAppUI$$ExternalSyntheticLambda7;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-string p0, "[doUpdateOverlaySettingUIList] end"

    .line 2459
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private doUpdateShutterType(IZ)V
    .locals 0

    .line 952
    iput p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterType:I

    .line 953
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->updateShutterType(IZ)V

    return-void
.end method

.method private doUpdateTopBarAndOptionBar()V
    .locals 1

    .line 2307
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    if-eqz v0, :cond_0

    .line 2308
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->updateSettingUIs()V

    .line 2310
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    if-eqz p0, :cond_1

    .line 2311
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->updateOptionSettingUIs()V

    :cond_1
    return-void
.end method

.method private doUpdateTopBarSettingUIList()V
    .locals 7

    .line 2331
    sget-object v0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[doUpdateTopBarSettingUIList] start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2334
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    if-nez v1, :cond_0

    return-void

    .line 2338
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-eqz v1, :cond_1

    .line 2339
    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v1

    .line 2340
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[doUpdateTopBarSettingUIList] currentCameraId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "0"

    .line 2342
    :goto_0
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f030023

    .line 2343
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const v4, 0x7f080388

    const/4 v5, 0x0

    .line 2344
    invoke-virtual {v2, v4, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 2345
    iget-object v4, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    if-eqz v4, :cond_6

    iget-object v5, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingUIProvider:Lcom/transsion/camera/app/common/provider/SettingUIProvider;

    if-eqz v5, :cond_6

    .line 2346
    invoke-virtual {v4}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getTopBarSettingUIEntries()[Ljava/lang/String;

    move-result-object v4

    .line 2347
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->isGoogleLensSupport()Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "com.transsion.camera.ui.setting.googlelens.GoogleLensSettingUIEntry"

    invoke-static {v4, v5}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "google lens do not support, no need to show lens icon!"

    .line 2348
    invoke-static {v0, v6}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2349
    invoke-static {v4, v5}, Lcom/transsion/camera/utils/ArrayUtils;->removeString([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 2351
    :cond_2
    iget-object v5, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingUIProvider:Lcom/transsion/camera/app/common/provider/SettingUIProvider;

    invoke-virtual {v5, v4, v3, v2}, Lcom/transsion/camera/app/common/provider/SettingUIProvider;->getTopBarItemUIList([Ljava/lang/String;Ljava/util/List;Landroid/graphics/drawable/Drawable;)Ljava/util/List;

    move-result-object v2

    .line 2353
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/BaseAppUI;->secureCameraTopBarSuperDefinitionSupport(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2354
    new-instance v1, Lcom/transsion/camera/app/ui/BaseAppUI$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/transsion/camera/app/ui/BaseAppUI$$ExternalSyntheticLambda4;-><init>()V

    invoke-interface {v2, v1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 2357
    :cond_3
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mFromIntent:Z

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSecureCamera:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f05003b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_5

    .line 2358
    :cond_4
    new-instance v1, Lcom/transsion/camera/app/ui/BaseAppUI$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/transsion/camera/app/ui/BaseAppUI$$ExternalSyntheticLambda5;-><init>()V

    invoke-interface {v2, v1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 2360
    :cond_5
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->setSettingUIList(Ljava/util/List;)V

    .line 2361
    iget v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentAppUIState:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_6

    const/4 v2, 0x3

    if-eq v1, v2, :cond_6

    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeName:Ljava/lang/String;

    const-string v2, "com.transsion.camera.feature.mode.more.MoreModeEntry"

    .line 2363
    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 2364
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->show()V

    :cond_6
    const-string p0, "[doUpdateTopBarSettingUIList] end"

    .line 2368
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private doUpdateUIState(IILjava/lang/String;)V
    .locals 6

    .line 2498
    iput p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentAppUIState:I

    .line 2499
    sget-object v0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doUpdateUIState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const v0, 0x106000d

    const/4 v1, 0x0

    const/16 v2, 0x7f

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_3

    .line 2699
    :pswitch_0
    invoke-direct {p0, v5, v3, v1}, Lcom/transsion/camera/app/ui/BaseAppUI;->doUpdateUIState(IILjava/lang/String;)V

    .line 2700
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->transitionToVoice()V

    goto/16 :goto_3

    .line 2703
    :pswitch_1
    invoke-direct {p0, v5, v3, v1}, Lcom/transsion/camera/app/ui/BaseAppUI;->doUpdateUIState(IILjava/lang/String;)V

    .line 2704
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->transitionToIdle()V

    goto/16 :goto_3

    .line 2710
    :pswitch_2
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHelpGuideUIManager:Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

    if-eqz p1, :cond_0

    .line 2711
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->hide()V

    .line 2713
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    if-eqz p1, :cond_1

    .line 2714
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->hide()V

    .line 2716
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCameraSwitcherUIManager:Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;

    if-eqz p1, :cond_2

    .line 2717
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->hide()V

    .line 2719
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/ScrollConsumer;->onBackPressed()Z

    .line 2720
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    if-eqz p1, :cond_3

    .line 2721
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->hide()V

    .line 2723
    :cond_3
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mThumbnailUIManager:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    if-eqz p1, :cond_4

    .line 2724
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->hide()V

    .line 2726
    :cond_4
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mGoogleLensUIManager:Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager;

    if-eqz p1, :cond_5

    .line 2727
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager;->hide()V

    .line 2729
    :cond_5
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    if-eqz p1, :cond_6

    .line 2730
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->show()V

    .line 2731
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/HintUIManager;->hideSavingDialog()V

    .line 2733
    :cond_6
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->show()V

    .line 2734
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mBottomBarRootView:Landroid/view/View;

    if-eqz p1, :cond_36

    .line 2735
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_3

    .line 2695
    :pswitch_3
    invoke-direct {p0, v5, v3, v1}, Lcom/transsion/camera/app/ui/BaseAppUI;->doUpdateUIState(IILjava/lang/String;)V

    .line 2696
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->transitionToSmile()V

    goto/16 :goto_3

    .line 2654
    :pswitch_4
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHelpGuideUIManager:Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

    if-eqz p1, :cond_7

    .line 2655
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->hide()V

    .line 2657
    :cond_7
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    if-eqz p1, :cond_8

    .line 2658
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->hide()V

    .line 2660
    :cond_8
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    if-eqz p1, :cond_9

    .line 2661
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->hide()V

    .line 2663
    :cond_9
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    if-eqz p1, :cond_a

    .line 2664
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->hide()V

    .line 2666
    :cond_a
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    if-eqz p1, :cond_b

    .line 2667
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->hide()V

    .line 2669
    :cond_b
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mThumbnailUIManager:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    if-eqz p1, :cond_c

    .line 2670
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->hide()V

    .line 2672
    :cond_c
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->hide()V

    .line 2673
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    if-eqz p1, :cond_d

    .line 2674
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->hide()V

    .line 2675
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/HintUIManager;->hideAllHint()V

    .line 2677
    :cond_d
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mGoogleLensUIManager:Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager;

    if-eqz p1, :cond_e

    .line 2678
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager;->hide()V

    .line 2680
    :cond_e
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCameraSwitcherUIManager:Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;

    if-eqz p1, :cond_f

    .line 2681
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->hide()V

    .line 2683
    :cond_f
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterPanelRootView:Landroid/view/ViewGroup;

    if-eqz p1, :cond_10

    .line 2684
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 2686
    :cond_10
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mFoldUIManager:Lcom/transsion/camera/app/common/manager/AbstractFoldUIManager;

    if-eqz p1, :cond_11

    .line 2687
    invoke-virtual {p1, v2}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->notifyCameraOperateActionToUI(I)V

    .line 2688
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mFoldUIManager:Lcom/transsion/camera/app/common/manager/AbstractFoldUIManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->hide()V

    .line 2690
    :cond_11
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mVIPCaptureManager:Lcom/transsion/camera/app/common/manager/AbstractFoldUIManager;

    if-eqz p1, :cond_36

    .line 2691
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->hide()V

    goto/16 :goto_3

    .line 2635
    :pswitch_5
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    if-eqz p1, :cond_13

    if-nez p3, :cond_12

    .line 2637
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f10028d

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 2639
    :cond_12
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->show()V

    .line 2640
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    invoke-virtual {p1, p3, p2}, Lcom/transsion/camera/app/ui/manager/HintUIManager;->showSavingDialog(Ljava/lang/String;I)V

    .line 2642
    :cond_13
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->hide()V

    .line 2643
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->hide()V

    .line 2644
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    if-eqz p1, :cond_14

    .line 2645
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->hide()V

    .line 2647
    :cond_14
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsVideoRecording:Z

    if-eqz p1, :cond_15

    .line 2648
    iget p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOrientation:I

    iget-object p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result p2

    invoke-virtual {p0, p1, p2, v4}, Lcom/transsion/camera/app/ui/BaseAppUI;->updateBottomBarLayout(IIZ)V

    .line 2650
    :cond_15
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsVideoRecording:Z

    .line 2651
    iput v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRecordingOrientation:I

    goto/16 :goto_3

    .line 2583
    :pswitch_6
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHelpGuideUIManager:Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

    if-eqz p1, :cond_16

    .line 2584
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->hide()V

    .line 2586
    :cond_16
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    if-eqz p1, :cond_17

    .line 2587
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->hide()V

    .line 2589
    :cond_17
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/ScrollConsumer;->onBackPressed()Z

    .line 2590
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    if-eqz p1, :cond_18

    .line 2591
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->hide()V

    .line 2593
    :cond_18
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    if-eqz p1, :cond_19

    .line 2594
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->hide()V

    .line 2596
    :cond_19
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mThumbnailUIManager:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    if-eqz p1, :cond_1a

    .line 2597
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->hide()V

    .line 2599
    :cond_1a
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mGoogleLensUIManager:Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager;

    if-eqz p1, :cond_1b

    .line 2600
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager;->hide()V

    .line 2602
    :cond_1b
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCameraSwitcherUIManager:Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;

    if-eqz p1, :cond_1c

    .line 2603
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->hide()V

    .line 2605
    :cond_1c
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mBottomBarRootView:Landroid/view/View;

    if-eqz p1, :cond_1d

    .line 2606
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2608
    :cond_1d
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_1e

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_1e

    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    if-eqz p1, :cond_1e

    .line 2609
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 2610
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->hideModeRegion()V

    .line 2612
    :cond_1e
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterPanelRootView:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1f

    .line 2613
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2614
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterPanelRootView:Landroid/view/ViewGroup;

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 2616
    :cond_1f
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterAnimatorFlag:Z

    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHideShutter:Z

    .line 2617
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterAnimatorFlag:Z

    .line 2618
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->transitionToProcessing()V

    .line 2619
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    if-eqz p1, :cond_20

    .line 2620
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->hide()V

    .line 2622
    :cond_20
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    invoke-virtual {p1, v2}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->notifyCameraOperateActionToUI(I)V

    .line 2623
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mFoldUIManager:Lcom/transsion/camera/app/common/manager/AbstractFoldUIManager;

    if-eqz p1, :cond_21

    .line 2624
    invoke-virtual {p1, v2}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->notifyCameraOperateActionToUI(I)V

    if-eq p2, v5, :cond_21

    .line 2626
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mFoldUIManager:Lcom/transsion/camera/app/common/manager/AbstractFoldUIManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->hide()V

    .line 2629
    :cond_21
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mVIPCaptureManager:Lcom/transsion/camera/app/common/manager/AbstractFoldUIManager;

    if-eqz p1, :cond_36

    .line 2630
    invoke-virtual {p1, v2}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->notifyCameraOperateActionToUI(I)V

    .line 2631
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mVIPCaptureManager:Lcom/transsion/camera/app/common/manager/AbstractFoldUIManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->hide()V

    goto/16 :goto_3

    .line 2503
    :pswitch_7
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHelpGuideUIManager:Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

    if-eqz p1, :cond_22

    .line 2504
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->show()V

    .line 2506
    :cond_22
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    if-eqz p1, :cond_23

    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeName:Ljava/lang/String;

    const-string p2, "com.transsion.camera.feature.mode.more.MoreModeEntry"

    .line 2507
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_23

    .line 2509
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getTopBarSettingUIEntries()[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_23

    .line 2510
    array-length p1, p1

    if-lez p1, :cond_23

    .line 2511
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->show()V

    .line 2514
    :cond_23
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    if-eqz p1, :cond_24

    .line 2515
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->show()V

    .line 2517
    :cond_24
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    if-eqz p1, :cond_25

    .line 2518
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->show()V

    .line 2519
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    invoke-virtual {p1, v5}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->updateArrowEnableState(Z)V

    .line 2520
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    invoke-virtual {p1, v5}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->updatePanelItemClickable(Z)V

    .line 2522
    :cond_25
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mThumbnailUIManager:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    if-eqz p1, :cond_26

    iget-boolean p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShouldHideThumbnailUI:Z

    if-nez p2, :cond_26

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->isUpdateThumbnail()Z

    move-result p1

    if-eqz p1, :cond_26

    .line 2523
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mThumbnailUIManager:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->show()V

    .line 2525
    :cond_26
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    if-eqz p1, :cond_27

    .line 2526
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->show()V

    .line 2528
    :cond_27
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mGoogleLensUIManager:Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager;

    if-eqz p1, :cond_28

    iget-boolean p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShouldHideGoogleLensUI:Z

    if-nez p2, :cond_28

    .line 2529
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager;->show()V

    .line 2531
    :cond_28
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShouldHideSwitcher:Z

    if-nez p1, :cond_29

    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCameraSwitcherUIManager:Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;

    if-eqz p1, :cond_29

    .line 2532
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->show()V

    .line 2535
    :cond_29
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string p2, "key_self_timer"

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2536
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2b

    const-string p2, "off"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2a

    goto :goto_0

    .line 2539
    :cond_2a
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->getShutterTypeSelftimerOn()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/BaseAppUI;->updateShutterType(I)V

    goto :goto_1

    .line 2537
    :cond_2b
    :goto_0
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->getShutterTypeSelftimerOff()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/BaseAppUI;->updateShutterType(I)V

    .line 2541
    :goto_1
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->show()V

    .line 2542
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->transitionToIdle()V

    .line 2543
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterPanelRootView:Landroid/view/ViewGroup;

    if-eqz p1, :cond_2d

    iget-boolean p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHideShutter:Z

    if-nez p2, :cond_2c

    iget-boolean p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHideShutterFromSelfTimer:Z

    if-eqz p2, :cond_2d

    :cond_2c
    const/16 p2, 0x8

    .line 2544
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2545
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterPanelRootView:Landroid/view/ViewGroup;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 2546
    iput-boolean v5, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterAnimatorFlag:Z

    .line 2547
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHideShutter:Z

    .line 2548
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHideShutterFromSelfTimer:Z

    .line 2550
    :cond_2d
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    if-eqz p1, :cond_30

    .line 2551
    iget-boolean p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterAnimatorFlag:Z

    if-eqz p2, :cond_2e

    .line 2552
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->hideModeRegion()V

    goto :goto_2

    .line 2553
    :cond_2e
    iget-boolean p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsModePickerSink:Z

    if-eqz p2, :cond_2f

    .line 2554
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->showModeRegionOnSinked()V

    goto :goto_2

    .line 2556
    :cond_2f
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->showModeRegion()V

    .line 2559
    :cond_30
    :goto_2
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    if-eqz p1, :cond_31

    .line 2560
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->show()V

    .line 2561
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/HintUIManager;->hideSavingDialog()V

    .line 2563
    :cond_31
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    if-eqz p1, :cond_32

    .line 2564
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->show()V

    .line 2566
    :cond_32
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mFoldUIManager:Lcom/transsion/camera/app/common/manager/AbstractFoldUIManager;

    const/16 p2, 0x80

    if-eqz p1, :cond_33

    .line 2567
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->show()V

    .line 2568
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mFoldUIManager:Lcom/transsion/camera/app/common/manager/AbstractFoldUIManager;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->notifyCameraOperateActionToUI(I)V

    .line 2570
    :cond_33
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mVIPCaptureManager:Lcom/transsion/camera/app/common/manager/AbstractFoldUIManager;

    if-eqz p1, :cond_34

    .line 2571
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->show()V

    .line 2572
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mVIPCaptureManager:Lcom/transsion/camera/app/common/manager/AbstractFoldUIManager;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->notifyCameraOperateActionToUI(I)V

    .line 2574
    :cond_34
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsVideoRecording:Z

    if-eqz p1, :cond_35

    .line 2576
    iget-object p3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    iget v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRecordingOrientation:I

    invoke-virtual {p3, p1, v0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->isRecordingAndOrientation(ZI)V

    .line 2578
    :cond_35
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsVideoRecording:Z

    .line 2579
    iput v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRecordingOrientation:I

    .line 2580
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->notifyCameraOperateActionToUI(I)V

    .line 2741
    :cond_36
    :goto_3
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    iget-boolean p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsVideoRecording:Z

    iget p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRecordingOrientation:I

    invoke-virtual {p1, p2, p0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->isRecordingAndOrientation(ZI)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private doVoiceCapture()V
    .locals 3

    .line 3293
    sget-object v0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doVoiceCapture mVideoIntent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mVideoIntent:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mPhotoIntent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPhotoIntent:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mOpenOnly: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOpenOnly:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mOverlayManagerFinished:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayManagerFinished:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 3296
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOpenOnly:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayManagerFinished:Z

    if-eqz v0, :cond_1

    .line 3297
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mVideoIntent:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3298
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mVideoIntent:Z

    .line 3299
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/BaseAppUI;->onShutterClick(I)V

    goto :goto_0

    .line 3300
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPhotoIntent:Z

    if-eqz v0, :cond_1

    .line 3301
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPhotoIntent:Z

    .line 3302
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSelfTimerResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    iget p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mDelayTime:I

    .line 3303
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "key_start_self_timer"

    .line 3302
    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private enterARCoreMode()V
    .locals 5

    .line 3033
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.transsion.camera.app.AREntranceActivity"

    goto :goto_0

    :cond_0
    const-string v0, "com.transsion.camera.app.ArCoreMainActivity"

    .line 3034
    :goto_0
    invoke-static {v0}, Lcom/transsion/camera/utils/ReflectionUtils;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 3036
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mAlreadyGotoAR:Z

    if-eqz v1, :cond_1

    goto/16 :goto_2

    .line 3039
    :cond_1
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mArActivityCoverLayout:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3040
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mArActivityCoverLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 3041
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-static {v2}, Lcom/transsion/camera/utils/ScreenManagerExt;->screenExpanded(Lcom/transsion/camera/app/common/manager/IScreenManager;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3042
    iget v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOrientation:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setRotation(F)V

    :cond_2
    const v2, 0x7f08053d

    .line 3047
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3049
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x11

    .line 3050
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 3051
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3052
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mArActivityCoverLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 3053
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3057
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v2, "off"

    if-eqz v0, :cond_3

    const-string v2, "key_shutter_sound"

    .line 3058
    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3059
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v3, "key_fingerprint_capture"

    invoke-interface {v0, v3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3060
    iget-object v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v4, "key_location"

    invoke-interface {v3, v4}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_3
    move-object v0, v2

    move-object v3, v0

    :goto_1
    const-string v4, "enableShutterSound"

    .line 3063
    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "enablePrintFinger"

    .line 3064
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "enableLocation"

    .line 3065
    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3066
    iget v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOrientation:I

    const-string v2, "init_orientation"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 3068
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mAlreadyGotoAR:Z

    .line 3069
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mGotoActivityListener:Lcom/transsion/camera/app/common/IAppUIListener$IGotoActivityListener;

    const/16 v0, 0x1000

    invoke-interface {p0, v1, v0}, Lcom/transsion/camera/app/common/IAppUIListener$IGotoActivityListener;->onGotoActivity(Landroid/content/Intent;I)V

    :cond_4
    :goto_2
    return-void
.end method

.method private enterARDrawlineMode()V
    .locals 5

    const-string v0, "com.transsion.ardrawlines.ARDrawLinesActivity"

    .line 3005
    invoke-static {v0}, Lcom/transsion/camera/utils/ReflectionUtils;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3006
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mAlreadyGotoAR:Z

    if-eqz v1, :cond_0

    goto :goto_1

    .line 3007
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mArActivityCoverLayout:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3008
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mArActivityCoverLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v2, 0x7f08053d

    .line 3009
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3010
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x11

    .line 3011
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 3012
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3013
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mArActivityCoverLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 3014
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3018
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v2, "off"

    if-eqz v0, :cond_1

    const-string v2, "key_shutter_sound"

    .line 3019
    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3020
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v3, "key_fingerprint_capture"

    invoke-interface {v0, v3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3021
    iget-object v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v4, "key_location"

    invoke-interface {v3, v4}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v0, v2

    move-object v3, v0

    :goto_0
    const-string v4, "enableShutterSound"

    .line 3024
    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "enablePrintFinger"

    .line 3025
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "enableLocation"

    .line 3026
    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 3028
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mAlreadyGotoAR:Z

    .line 3029
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mGotoActivityListener:Lcom/transsion/camera/app/common/IAppUIListener$IGotoActivityListener;

    const/16 v0, 0x1001

    invoke-interface {p0, v1, v0}, Lcom/transsion/camera/app/common/IAppUIListener$IGotoActivityListener;->onGotoActivity(Landroid/content/Intent;I)V

    :cond_2
    :goto_1
    return-void
.end method

.method private enterSettingFragment()V
    .locals 11

    .line 1844
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/16 v1, 0x11

    .line 1845
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/BaseAppUI;->notifyRawActionToAppUI(I)V

    .line 1846
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    if-eqz v1, :cond_0

    .line 1847
    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->dismissPopupWithoutAnimation()Z

    :cond_0
    const v1, 0x7f030023

    .line 1849
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const v2, 0x7f08080d

    const/4 v3, 0x0

    .line 1850
    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1851
    iget-object v4, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    if-eqz v4, :cond_2

    .line 1852
    invoke-virtual {v4}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getPreferenceSettingUIEntries()[Ljava/lang/String;

    move-result-object v4

    .line 1854
    iget-object v5, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/transsion/camera/utils/FeatureSupport;->isDeveloperMode(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    const v3, 0x7f030032

    .line 1855
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 1858
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingUIProvider:Lcom/transsion/camera/app/common/provider/SettingUIProvider;

    .line 1859
    invoke-virtual {v0, v4, v3, v1, v2}, Lcom/transsion/camera/app/common/provider/SettingUIProvider;->createPreferenceItemUIList([Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;Landroid/graphics/drawable/Drawable;)Ljava/util/List;

    move-result-object v6

    .line 1860
    iget-object v5, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingFragmentManager:Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;

    iget-object v7, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeName:Ljava/lang/String;

    iget-boolean v8, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSecureCamera:Z

    iget-boolean v9, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mVoiceInteraction:Z

    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/transsion/camera/app/PermissionActivity;

    .line 1861
    invoke-virtual {v0}, Lcom/transsion/camera/app/PermissionActivity;->checkCameraLocationPermissions()Z

    move-result v10

    .line 1860
    invoke-virtual/range {v5 .. v10}, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->setSettingUIList(Ljava/util/List;Ljava/lang/String;ZZZ)V

    .line 1863
    :cond_2
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingFragmentManager:Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->enterSettingFragment()V

    return-void
.end method

.method private isMainThread()Z
    .locals 1

    .line 3217
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$delayLoadUIManager$7()V
    .locals 1

    .line 2092
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIManagers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;

    if-eqz v0, :cond_0

    .line 2094
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->loadAfterPreviewStarted()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private synthetic lambda$doDelayLoadUIManager$6()Z
    .locals 2

    .line 2067
    sget-object v0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[PreviewPerformance] doDelayLoadUIManager queueIdle."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2068
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->delayLoadUIManager()V

    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic lambda$doUpdateTopBarSettingUIList$8(Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;)Z
    .locals 1

    .line 2354
    invoke-interface {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object p0

    const-string v0, "key_super_definition"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$doUpdateTopBarSettingUIList$9(Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;)Z
    .locals 1

    .line 2358
    invoke-interface {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object p0

    const-string v0, "key_google_lens"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$onZoomClick$2(ZLcom/transsion/camera/app/common/IAppUIControl$IZoomKeyEventCallback;)V
    .locals 0

    .line 1426
    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IZoomKeyEventCallback;->onZoomClick(Z)V

    return-void
.end method

.method private static synthetic lambda$onZoomScaleEnd$5(ZLcom/transsion/camera/app/common/IAppUIControl$IZoomKeyEventCallback;)V
    .locals 0

    .line 1458
    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IZoomKeyEventCallback;->onZoomScaleEnd(Z)V

    return-void
.end method

.method private static synthetic lambda$onZoomScaleStart$3(ZLcom/transsion/camera/app/common/IAppUIControl$IZoomKeyEventCallback;)V
    .locals 0

    .line 1437
    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IZoomKeyEventCallback;->onZoomScaleStart(Z)V

    return-void
.end method

.method private static synthetic lambda$onZoomScaling$4(ZLcom/transsion/camera/app/common/IAppUIControl$IZoomKeyEventCallback;)V
    .locals 0

    .line 1448
    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IZoomKeyEventCallback;->onZoomScaling(Z)V

    return-void
.end method

.method private synthetic lambda$updateBottomBarLayoutForOnlyHover$10(ZLandroid/view/ViewGroup$MarginLayoutParams;Landroid/animation/ValueAnimator;)V
    .locals 2

    const-string v0, "padding"

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 3458
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterPanelRootView:Landroid/view/ViewGroup;

    invoke-virtual {p3, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v1, v1, v0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_0

    .line 3460
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterPanelRootView:Landroid/view/ViewGroup;

    invoke-virtual {p3, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0, v1, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    :goto_0
    const-string p1, "height"

    .line 3462
    invoke-virtual {p3, p1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const-string p1, "margin"

    .line 3463
    invoke-virtual {p3, p1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 3464
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mBottomBarRootView:Landroid/view/View;

    invoke-virtual {p0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private synthetic lambda$updateCustomState$0()V
    .locals 1

    .line 1017
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->setWritingState(Z)V

    return-void
.end method

.method private synthetic lambda$updateCustomState$1()V
    .locals 1

    .line 1020
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->setWritingState(Z)V

    return-void
.end method

.method private notifyAllScreenFormListeners(IZ)V
    .locals 3

    .line 1332
    sget-object v0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FoldUIForm]start notifyScreenFormChanged to all listeners: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1333
    :goto_0
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/BaseAppUI;->resetUIRootParentLayout(Z)V

    .line 1335
    iget v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOrientation:I

    if-ne p1, v0, :cond_1

    .line 1337
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsVideoRecording:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRecordingOrientation:I

    move v1, v0

    .line 1339
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v0

    invoke-virtual {p0, v1, v0, p2}, Lcom/transsion/camera/app/ui/BaseAppUI;->updateBottomBarLayout(IIZ)V

    .line 1341
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->updateRootLayoutDisplaySize()V

    .line 1343
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenFormTypeListeners:Ljava/util/List;

    monitor-enter v0

    .line 1344
    :try_start_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenFormTypeListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/IScreenFormControl;

    .line 1345
    invoke-interface {v1, p1, p2}, Lcom/transsion/camera/app/common/IScreenFormControl;->onScreenFormChanged(IZ)V

    goto :goto_1

    .line 1347
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1348
    sget-object p0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[FoldUIForm]end notifyScreenFormChanged to all listeners"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    .line 1347
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private notifyCameraOperateActionToUI(I)V
    .locals 1

    const/16 v0, 0xf

    if-eq p1, v0, :cond_2

    const/16 v0, 0x12

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2d

    if-eq p1, v0, :cond_2

    const/16 v0, 0x52

    if-eq p1, v0, :cond_2

    const/16 v0, 0x90

    if-eq p1, v0, :cond_2

    const/16 v0, 0xa1

    if-eq p1, v0, :cond_1

    const/16 v0, 0x17

    if-eq p1, v0, :cond_0

    const/16 v0, 0x18

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 3280
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIHandler:Lcom/transsion/camera/app/ui/BaseAppUI$UIHandler;

    const/16 p1, 0x72

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 3286
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->showOrHideSystemUI()V

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    .line 3270
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsVideoRecording:Z

    .line 3271
    iget p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRecordingOrientation:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_3

    .line 3272
    iget p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOrientation:I

    iput p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRecordingOrientation:I

    .line 3274
    :cond_3
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    if-eqz p1, :cond_4

    .line 3275
    iget p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRecordingOrientation:I

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/ui/manager/HintUIManager;->setRecorderOrientation(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method private notifyCameraStateToUI(I)V
    .locals 3

    .line 2895
    sget-object v0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyCameraStateToUI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/transsion/camera/app/common/CameraState;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2896
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    if-eqz v0, :cond_0

    .line 2897
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->notifyCameraStateToUI(I)V

    .line 2900
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    if-eqz p0, :cond_1

    .line 2901
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->notifyCameraStateToUI(I)V

    :cond_1
    return-void
.end method

.method private onCameraOperateAction(I)V
    .locals 3

    .line 3221
    sget-object v0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCameraOperateAction action :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 3222
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingFragmentManager:Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;

    if-eqz v0, :cond_0

    .line 3223
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->notifyCameraOperateActionToUI(I)V

    .line 3225
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModeOrderEditorManager:Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;

    if-eqz v0, :cond_1

    .line 3226
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->notifyCameraOperateActionToUI(I)V

    .line 3228
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mEditWaterMarkManager:Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;

    if-eqz v0, :cond_2

    .line 3229
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->notifyCameraOperateActionToUI(I)V

    .line 3231
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRemoteCaptureManager:Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;

    if-eqz v0, :cond_3

    .line 3232
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->notifyCameraOperateActionToUI(I)V

    .line 3234
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIManagers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/manager/AbstractViewManager;

    if-eqz v1, :cond_4

    .line 3236
    invoke-virtual {v1, p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->notifyCameraOperateActionToUI(I)V

    goto :goto_0

    .line 3240
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mVideoIntent:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPhotoIntent:Z

    if-eqz v0, :cond_7

    .line 3242
    :cond_6
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIHandler:Lcom/transsion/camera/app/ui/BaseAppUI$UIHandler;

    const/16 v1, 0x71

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3243
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIHandler:Lcom/transsion/camera/app/ui/BaseAppUI$UIHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3246
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mGpuAlgorithmManager:Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;

    if-eqz v0, :cond_8

    .line 3247
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->notifyCameraOperateAction(I)V

    .line 3250
    :cond_8
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/BaseAppUI;->notifyCameraOperateActionToUI(I)V

    .line 3252
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->modeNotifyCameraOperateActionCallback:Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;

    if-eqz v0, :cond_9

    .line 3253
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;->notifyCameraOperateAction(I)V

    :cond_9
    const/16 v0, 0xb

    const/4 v1, 0x0

    if-ne p1, v0, :cond_a

    .line 3256
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterAnimatorFlag:Z

    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHideShutterFromSelfTimer:Z

    .line 3257
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterAnimatorFlag:Z

    :cond_a
    const/16 v0, 0x39

    if-ne p1, v0, :cond_b

    .line 3260
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHideShutterFromSelfTimer:Z

    :cond_b
    return-void
.end method

.method private onShowOrHideSystemUIView(Z)V
    .locals 0

    .line 3971
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSystemUIViewListener:Lcom/transsion/camera/app/common/IAppUIListener$ISystemUIViewListener;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$ISystemUIViewListener;->onShowOrHideSystemUIView(Z)V

    return-void
.end method

.method private onUIManagerReady()V
    .locals 3

    const/16 v0, 0x6d

    .line 3309
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->notifyRawActionToAppUI(I)V

    .line 3310
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mNeedChangeScreenForm:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3311
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mNeedChangeScreenForm:Z

    .line 3312
    sget-object v0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "[FoldUIForm]need notifyScreenFormChanged"

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 3313
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v0

    invoke-virtual {p0, v0, v1, v1}, Lcom/transsion/camera/app/ui/BaseAppUI;->notifyScreenFormChanged(IZZ)V

    .line 3315
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSpecifyModePolicy:Lcom/transsion/camera/app/SpecifyModePolicy;

    if-eqz v0, :cond_1

    .line 3316
    invoke-virtual {v0}, Lcom/transsion/camera/app/SpecifyModePolicy;->doActionAfterPreviewStarted()V

    .line 3318
    :cond_1
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOnCompleteAllowed:Z

    if-eqz v0, :cond_2

    .line 3319
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOnCompleteAllowed:Z

    .line 3320
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ModuleTransferManager;->onComplete()V

    :cond_2
    return-void
.end method

.method private resetSystemUI()V
    .locals 4

    .line 3948
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIHandler:Lcom/transsion/camera/app/ui/BaseAppUI$UIHandler;

    const/16 v1, 0x72

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3949
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIHandler:Lcom/transsion/camera/app/ui/BaseAppUI$UIHandler;

    const-wide/16 v2, 0x1388

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private resumeRootLayout()V
    .locals 2

    .line 1703
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    .line 1706
    :cond_0
    instance-of v1, v0, Lcom/transsion/camera/app/ui/widget/RootLayout;

    if-nez v1, :cond_1

    return-void

    .line 1709
    :cond_1
    check-cast v0, Lcom/transsion/camera/app/ui/widget/RootLayout;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/RootLayout;->resume()V

    .line 1710
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mArActivityCoverLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    .line 1711
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1712
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mArActivityCoverLayout:Landroid/widget/FrameLayout;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method private runBottomBarRootAnimator()V
    .locals 7

    .line 3403
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mBottomBarIn:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3404
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mBottomBarIn:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 3406
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mBottomBarOut:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3407
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mBottomBarOut:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 3411
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mBottomBarRootView:Landroid/view/View;

    const/4 v1, 0x1

    new-array v2, v1, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v3, v2, v4

    const-string v3, "alpha"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v5, 0x15e

    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mBottomBarOut:Landroid/animation/ObjectAnimator;

    .line 3412
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mBottomBarRootView:Landroid/view/View;

    new-array v1, v1, [F

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v1, v4

    invoke-static {v0, v3, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mBottomBarIn:Landroid/animation/ObjectAnimator;

    .line 3413
    sget-object v1, Lcom/transsion/camera/app/ui/BaseAppUI;->COLUMN_INTERPOLATOR_IN:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3414
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mBottomBarOut:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3415
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mBottomBarOut:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/transsion/camera/app/ui/BaseAppUI$3;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/BaseAppUI$3;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3424
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mBottomBarOut:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private runRootAnimatorWhenFormChanged(IZ)V
    .locals 13

    .line 3975
    sget-object v0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[FoldUIForm]runRootAnimatorWhenFormChanged start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 3976
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootAnimatorInSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3978
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootAnimatorInSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 3980
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootAnimatorOutSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3982
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootAnimatorOutSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 3984
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mMainRootAnimatorIn:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3986
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mMainRootAnimatorIn:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 3990
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayUIRoot:Landroid/view/ViewGroup;

    const/4 v1, 0x1

    new-array v2, v1, [F

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v2, v3

    const-string v5, "alpha"

    invoke-static {v0, v5, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 3991
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModeInflateRoot:Landroid/view/ViewGroup;

    new-array v6, v1, [F

    aput v4, v6, v3

    invoke-static {v2, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 3992
    iget-object v6, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintRootLayout:Landroid/view/ViewGroup;

    new-array v7, v1, [F

    aput v4, v7, v3

    invoke-static {v6, v5, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 3993
    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v7, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootAnimatorInSet:Landroid/animation/AnimatorSet;

    const-wide/16 v8, 0x12c

    .line 3994
    invoke-virtual {v7, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 3995
    iget-object v7, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootAnimatorInSet:Landroid/animation/AnimatorSet;

    sget-object v10, Lcom/transsion/camera/app/ui/BaseAppUI;->COLUMN_INTERPOLATOR_IN:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v7, v10}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3996
    iget-object v7, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootAnimatorInSet:Landroid/animation/AnimatorSet;

    const/4 v11, 0x3

    new-array v12, v11, [Landroid/animation/Animator;

    aput-object v0, v12, v3

    aput-object v2, v12, v1

    const/4 v0, 0x2

    aput-object v6, v12, v0

    invoke-virtual {v7, v12}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 3997
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootAnimatorInSet:Landroid/animation/AnimatorSet;

    new-instance v6, Lcom/transsion/camera/app/ui/BaseAppUI$6;

    invoke-direct {v6, p0}, Lcom/transsion/camera/app/ui/BaseAppUI$6;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;)V

    invoke-virtual {v2, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4021
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mMainCtrlLayerRootParent:Landroid/view/ViewGroup;

    new-array v6, v1, [F

    aput v4, v6, v3

    invoke-static {v2, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mMainRootAnimatorIn:Landroid/animation/ObjectAnimator;

    .line 4022
    invoke-virtual {v2, v10}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4023
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mMainRootAnimatorIn:Landroid/animation/ObjectAnimator;

    new-instance v4, Lcom/transsion/camera/app/ui/BaseAppUI$7;

    invoke-direct {v4, p0}, Lcom/transsion/camera/app/ui/BaseAppUI$7;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;)V

    invoke-virtual {v2, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-eqz p2, :cond_3

    const-wide/16 v6, 0x0

    goto :goto_0

    :cond_3
    const-wide/16 v6, 0x64

    .line 4039
    :goto_0
    iget-object p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mMainCtrlLayerRootParent:Landroid/view/ViewGroup;

    new-array v2, v1, [F

    const/4 v4, 0x0

    aput v4, v2, v3

    invoke-static {p2, v5, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    .line 4040
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayUIRoot:Landroid/view/ViewGroup;

    new-array v8, v1, [F

    aput v4, v8, v3

    invoke-static {v2, v5, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 4041
    iget-object v8, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModeInflateRoot:Landroid/view/ViewGroup;

    new-array v9, v1, [F

    aput v4, v9, v3

    invoke-static {v8, v5, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 4042
    iget-object v9, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintRootLayout:Landroid/view/ViewGroup;

    new-array v10, v1, [F

    aput v4, v10, v3

    invoke-static {v9, v5, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 4043
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootAnimatorOutSet:Landroid/animation/AnimatorSet;

    .line 4044
    invoke-virtual {v5, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 4045
    iget-object v5, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootAnimatorOutSet:Landroid/animation/AnimatorSet;

    sget-object v6, Lcom/transsion/camera/app/ui/BaseAppUI;->COLUMN_INTERPOLATOR_OUT:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4046
    iget-object v5, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootAnimatorOutSet:Landroid/animation/AnimatorSet;

    const/4 v6, 0x4

    new-array v6, v6, [Landroid/animation/Animator;

    aput-object p2, v6, v3

    aput-object v2, v6, v1

    aput-object v8, v6, v0

    aput-object v4, v6, v11

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 4047
    iget-object p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootAnimatorOutSet:Landroid/animation/AnimatorSet;

    new-instance v0, Lcom/transsion/camera/app/ui/BaseAppUI$8;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/app/ui/BaseAppUI$8;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;I)V

    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4070
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootAnimatorOutSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private secureCameraTopBarSuperDefinitionSupport(Ljava/lang/String;)Z
    .locals 2

    .line 2373
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05008f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 2374
    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p1

    if-nez v0, :cond_0

    .line 2376
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSecureCamera:Z

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method private updateShutterPanelRootLayout()V
    .locals 5

    .line 3383
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterPanelRootView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    goto :goto_1

    .line 3387
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->getBottomBarHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->getNavigationBarHeight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 3388
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->calculateShutterPanelPaddingHeight(I)I

    move-result v0

    .line 3389
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    .line 3390
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterPanelRootView:Landroid/view/ViewGroup;

    invoke-virtual {p0, v3, v3, v3, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_1

    .line 3391
    :cond_1
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    .line 3392
    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_5

    :cond_2
    if-ltz v0, :cond_3

    goto :goto_0

    :cond_3
    move v2, v3

    :goto_0
    if-eqz v2, :cond_4

    .line 3395
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterPanelRootView:Landroid/view/ViewGroup;

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-virtual {p0, v3, v3, v3, v0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_1

    .line 3397
    :cond_4
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterPanelRootView:Landroid/view/ViewGroup;

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-virtual {p0, v3, v0, v3, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method public calculateBottomPanelPaddingHeight(I)I
    .locals 1

    .line 1950
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getShutterPanelBasePaddingHeight()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScreenManager;->getShutterButtonHeight()I

    move-result p0

    sub-int/2addr p1, p0

    return p1
.end method

.method protected final calculateShutterPanelPaddingHeight(I)I
    .locals 1

    .line 2057
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->getShutterPanelPaddingHeight()I

    move-result v0

    .line 2058
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->getShutterButtonHeight()I

    move-result p0

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    sub-int/2addr p1, p0

    return p1
.end method

.method public changeOrientation(I)I
    .locals 0

    .line 3896
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mVIPCaptureManager:Lcom/transsion/camera/app/common/manager/AbstractFoldUIManager;

    if-eqz p0, :cond_0

    .line 3897
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/manager/AbstractFoldUIManager;->changeOrientation(I)I

    move-result p0

    return p0

    :cond_0
    return p1
.end method

.method public changeUIWhenSwitchModeAfter()V
    .locals 0

    return-void
.end method

.method public changeUIWhenSwitchModeBefore()V
    .locals 1

    const/4 v0, 0x1

    .line 1833
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUISinkModeChange:Z

    .line 1834
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    if-eqz p0, :cond_0

    .line 1835
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->changeUIWhenSwitchModeBefore()V

    :cond_0
    return-void
.end method

.method public couldShowWideCamera(Z)V
    .locals 0

    .line 3735
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    if-eqz p0, :cond_0

    .line 3736
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->couldShow(Z)V

    :cond_0
    return-void
.end method

.method public currentDisplayStyle()I
    .locals 0

    .line 560
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->currentDisplayStyle()I

    move-result p0

    return p0
.end method

.method public currentThreadIsMain()Z
    .locals 0

    .line 546
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->isMainThread()Z

    move-result p0

    return p0
.end method

.method public destroyPreviewUI()V
    .locals 0

    .line 1648
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->destroy()V

    return-void
.end method

.method protected doLoadContinuousShotUIManager()V
    .locals 4

    .line 2139
    sget-object v0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[doLoadContinuousShotUIManager] start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2140
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContinuousShotUIManager:Lcom/transsion/camera/app/ui/manager/ContinuousShotUIManager;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayUIRoot:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 2141
    new-instance v1, Lcom/transsion/camera/app/ui/manager/ContinuousShotUIManager;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-direct {v1, v2}, Lcom/transsion/camera/app/ui/manager/ContinuousShotUIManager;-><init>(Lcom/transsion/camera/app/ui/ScreenManager;)V

    iput-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContinuousShotUIManager:Lcom/transsion/camera/app/ui/manager/ContinuousShotUIManager;

    .line 2142
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIManagers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2143
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContinuousShotUIManager:Lcom/transsion/camera/app/ui/manager/ContinuousShotUIManager;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/BaseAppUI;->registerScreenFormListener(Lcom/transsion/camera/app/common/IScreenFormControl;)V

    .line 2144
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContinuousShotUIManager:Lcom/transsion/camera/app/ui/manager/ContinuousShotUIManager;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayUIRoot:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v1, v2, v3}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->inflateLayout(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    .line 2145
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContinuousShotUIManager:Lcom/transsion/camera/app/ui/manager/ContinuousShotUIManager;

    iget p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOrientation:I

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Lcom/transsion/camera/app/ui/manager/ContinuousShotUIManager;->onOrientationChanged(IZ)V

    :cond_0
    const-string p0, "[doLoadContinuousShotUIManager] end"

    .line 2147
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method protected doLoadToastUIManager()V
    .locals 4

    .line 2127
    sget-object v0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[doLoadToastUIManager] start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2128
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mToastUIManager:Lcom/transsion/camera/app/ui/manager/ToastUIManager;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mToastLayout:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    .line 2129
    new-instance v1, Lcom/transsion/camera/app/ui/manager/ToastUIManager;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-direct {v1, v2}, Lcom/transsion/camera/app/ui/manager/ToastUIManager;-><init>(Lcom/transsion/camera/app/ui/ScreenManager;)V

    iput-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mToastUIManager:Lcom/transsion/camera/app/ui/manager/ToastUIManager;

    .line 2130
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/BaseAppUI;->registerScreenFormListener(Lcom/transsion/camera/app/common/IScreenFormControl;)V

    .line 2131
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIManagers:Ljava/util/List;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mToastUIManager:Lcom/transsion/camera/app/ui/manager/ToastUIManager;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2132
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mToastUIManager:Lcom/transsion/camera/app/ui/manager/ToastUIManager;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mToastLayout:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v1, v2, v3}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->inflateLayout(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    .line 2133
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mToastUIManager:Lcom/transsion/camera/app/ui/manager/ToastUIManager;

    iget p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOrientation:I

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onOrientationChanged(IZ)V

    :cond_0
    const-string p0, "[doLoadToastUIManager] end"

    .line 2135
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public doOnBGImageSaved(Landroid/net/Uri;[B)V
    .locals 1

    .line 1749
    iget-object p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mThumbnailUIManager:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    .line 1750
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->isSupportShare()Z

    move-result p0

    invoke-virtual {p2, p1, v0, p0}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->updateThumbnailUri(Landroid/net/Uri;ZZ)V

    goto :goto_0

    .line 1752
    :cond_0
    sget-object p0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[doOnBGImageSaved] mThumbnailUIManager null."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected doSetupModePickerUIManager()V
    .locals 4

    .line 2151
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerRootView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 2152
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0, v2, v1, v3}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->inflateLayout(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    .line 2153
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->registerPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    :cond_0
    return-void
.end method

.method protected doSetupUIManagers()V
    .locals 17

    move-object/from16 v6, p0

    .line 2158
    sget-object v7, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[PreviewPerformance] doSetupUIManagers start"

    invoke-static {v7, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string v0, "doSetupUIManagers"

    .line 2159
    invoke-static {v0}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 2160
    new-instance v8, Lcom/transsion/camera/app/ui/BaseAppUI$SwitchWideCameraListenerImpl;

    const/4 v9, 0x0

    invoke-direct {v8, v6, v9}, Lcom/transsion/camera/app/ui/BaseAppUI$SwitchWideCameraListenerImpl;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;Lcom/transsion/camera/app/ui/BaseAppUI$1;)V

    .line 2161
    new-instance v10, Lcom/transsion/camera/app/ui/BaseAppUI$SwitchTeleCameraListenerImpl;

    invoke-direct {v10, v6, v9}, Lcom/transsion/camera/app/ui/BaseAppUI$SwitchTeleCameraListenerImpl;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;Lcom/transsion/camera/app/ui/BaseAppUI$1;)V

    .line 2162
    new-instance v11, Lcom/transsion/camera/app/ui/BaseAppUI$SwitchPeriscopeCameraListenerImpl;

    invoke-direct {v11, v6, v9}, Lcom/transsion/camera/app/ui/BaseAppUI$SwitchPeriscopeCameraListenerImpl;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;Lcom/transsion/camera/app/ui/BaseAppUI$1;)V

    .line 2163
    new-instance v12, Lcom/transsion/camera/app/ui/BaseAppUI$SwitchBlurCameraListenerImpl;

    invoke-direct {v12, v6, v9}, Lcom/transsion/camera/app/ui/BaseAppUI$SwitchBlurCameraListenerImpl;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;Lcom/transsion/camera/app/ui/BaseAppUI$1;)V

    .line 2164
    new-instance v13, Lcom/transsion/camera/app/ui/BaseAppUI$SwitchDualCamBWCameraListenerImpl;

    invoke-direct {v13, v6, v9}, Lcom/transsion/camera/app/ui/BaseAppUI$SwitchDualCamBWCameraListenerImpl;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;Lcom/transsion/camera/app/ui/BaseAppUI$1;)V

    .line 2165
    new-instance v14, Lcom/transsion/camera/app/ui/BaseAppUI$SwitchHighDefinitionCameraListenerImpl;

    invoke-direct {v14, v6, v9}, Lcom/transsion/camera/app/ui/BaseAppUI$SwitchHighDefinitionCameraListenerImpl;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;Lcom/transsion/camera/app/ui/BaseAppUI$1;)V

    .line 2166
    new-instance v15, Lcom/transsion/camera/app/ui/BaseAppUI$SwitchDualAndMainCameraListenerImpl;

    invoke-direct {v15, v6, v9}, Lcom/transsion/camera/app/ui/BaseAppUI$SwitchDualAndMainCameraListenerImpl;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;Lcom/transsion/camera/app/ui/BaseAppUI$1;)V

    const/4 v0, 0x0

    .line 2168
    iput-boolean v0, v6, Lcom/transsion/camera/app/ui/BaseAppUI;->mShouldHideSwitcher:Z

    .line 2169
    iput-boolean v0, v6, Lcom/transsion/camera/app/ui/BaseAppUI;->mShouldHideThumbnailUI:Z

    .line 2170
    iput-boolean v0, v6, Lcom/transsion/camera/app/ui/BaseAppUI;->mShouldHideGoogleLensUI:Z

    .line 2172
    iget-object v0, v6, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    if-eqz v0, :cond_0

    .line 2173
    new-instance v1, Lcom/transsion/camera/app/ui/BaseAppUI$OnTouchListenerImpl;

    invoke-direct {v1, v6, v9}, Lcom/transsion/camera/app/ui/BaseAppUI$OnTouchListenerImpl;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;Lcom/transsion/camera/app/ui/BaseAppUI$1;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2175
    :cond_0
    iget-object v0, v6, Lcom/transsion/camera/app/ui/BaseAppUI;->mThumbnailUIManager:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    if-eqz v0, :cond_1

    iget-object v1, v6, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterPanelRootView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 2176
    iget-object v2, v6, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    iget-object v3, v6, Lcom/transsion/camera/app/ui/BaseAppUI;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0, v2, v1, v3}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->inflateLayout(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    .line 2178
    :cond_1
    iget-object v0, v6, Lcom/transsion/camera/app/ui/BaseAppUI;->mCameraSwitcherUIManager:Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;

    if-eqz v0, :cond_2

    iget-object v1, v6, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterPanelRootView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 2179
    iget-object v2, v6, Lcom/transsion/camera/app/ui/BaseAppUI;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->inflateLayout(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    .line 2181
    :cond_2
    iget-object v0, v6, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    if-eqz v0, :cond_3

    iget-object v1, v6, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterPanelRootView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    .line 2182
    iget-object v2, v6, Lcom/transsion/camera/app/ui/BaseAppUI;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->inflateLayout(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    .line 2184
    :cond_3
    iget-object v0, v6, Lcom/transsion/camera/app/ui/BaseAppUI;->mGoogleLensUIManager:Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager;

    if-eqz v0, :cond_4

    iget-object v1, v6, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterPanelRootView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_4

    .line 2185
    iget-object v2, v6, Lcom/transsion/camera/app/ui/BaseAppUI;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->inflateLayout(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    .line 2187
    :cond_4
    iget-object v0, v6, Lcom/transsion/camera/app/ui/BaseAppUI;->mVIPCaptureManager:Lcom/transsion/camera/app/common/manager/AbstractFoldUIManager;

    if-eqz v0, :cond_5

    .line 2188
    iget-object v0, v6, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f0904c1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2189
    iget-object v1, v6, Lcom/transsion/camera/app/ui/BaseAppUI;->mVIPCaptureManager:Lcom/transsion/camera/app/common/manager/AbstractFoldUIManager;

    iget-object v2, v6, Lcom/transsion/camera/app/ui/BaseAppUI;->mModeAboveMainCtrlInflateRoot:Landroid/view/ViewGroup;

    iget-object v3, v6, Lcom/transsion/camera/app/ui/BaseAppUI;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v1, v2, v0, v3}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->inflateLayout(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    .line 2191
    :cond_5
    iget-object v0, v6, Lcom/transsion/camera/app/ui/BaseAppUI;->mRingScreenLightUIManager:Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;

    if-eqz v0, :cond_6

    .line 2192
    iget-object v1, v6, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    iget-object v2, v6, Lcom/transsion/camera/app/ui/BaseAppUI;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->inflateLayout(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    .line 2193
    iget-object v0, v6, Lcom/transsion/camera/app/ui/BaseAppUI;->mRingScreenLightUIManager:Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;

    invoke-virtual {v6, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->registerPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    .line 2196
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->doSetupModePickerUIManager()V

    .line 2198
    iget-object v0, v6, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f0902ae

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v6, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerLayout:Landroid/view/View;

    .line 2199
    iget-object v0, v6, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f0902aa

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v6, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePikerArrowRoot:Landroid/view/View;

    const/16 v5, 0x8

    if-eqz v0, :cond_8

    .line 2200
    iget-object v0, v6, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    .line 2201
    invoke-static {v0}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportMoreMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, v6, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    .line 2202
    invoke-static {v0}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportNewMoreMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2203
    :cond_7
    iget-object v0, v6, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePikerArrowRoot:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2204
    iput-object v9, v6, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePikerArrowRoot:Landroid/view/View;

    .line 2207
    :cond_8
    iget-object v0, v6, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f0902d7

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v6, Lcom/transsion/camera/app/ui/BaseAppUI;->mMoreModeGuideLeftRoot:Landroid/view/View;

    .line 2208
    iget-object v0, v6, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f0902d9

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v6, Lcom/transsion/camera/app/ui/BaseAppUI;->mMoreModeGuideRightRoot:Landroid/view/View;

    .line 2209
    iget-object v0, v6, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f0902af

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/TabLayout;

    iput-object v0, v6, Lcom/transsion/camera/app/ui/BaseAppUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    .line 2211
    iget-object v0, v6, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f0904bf

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_9

    .line 2213
    iget-object v1, v6, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    if-eqz v1, :cond_9

    .line 2214
    iget-object v2, v6, Lcom/transsion/camera/app/ui/BaseAppUI;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v1, v0, v2}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->inflateLayout(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    .line 2218
    :cond_9
    iget-object v0, v6, Lcom/transsion/camera/app/ui/BaseAppUI;->mHelpGuideUIManager:Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

    if-eqz v0, :cond_a

    .line 2219
    iget-object v1, v6, Lcom/transsion/camera/app/ui/BaseAppUI;->mBelowMainCtrlInflateRoot:Landroid/view/ViewGroup;

    iget-object v2, v6, Lcom/transsion/camera/app/ui/BaseAppUI;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->inflateLayout(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    .line 2220
    iget-object v0, v6, Lcom/transsion/camera/app/ui/BaseAppUI;->mHelpGuideUIManager:Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

    invoke-virtual {v6, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->registerPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    .line 2223
    :cond_a
    iget-object v0, v6, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f090511

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2224
    iget-object v1, v6, Lcom/transsion/camera/app/ui/BaseAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    if-eqz v1, :cond_b

    if-eqz v0, :cond_b

    .line 2225
    iget-object v2, v6, Lcom/transsion/camera/app/ui/BaseAppUI;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v1, v0, v2}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->inflateLayout(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    .line 2226
    iget-object v0, v6, Lcom/transsion/camera/app/ui/BaseAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    invoke-virtual {v0, v8}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->setSwitchWideCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;)V

    .line 2229
    :cond_b
    iget-object v0, v6, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    if-eqz v0, :cond_c

    iget-object v1, v6, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayUIRoot:Landroid/view/ViewGroup;

    if-eqz v1, :cond_c

    .line 2230
    iget-object v2, v6, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    iget-object v3, v6, Lcom/transsion/camera/app/ui/BaseAppUI;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0, v2, v1, v3}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->inflateLayout(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    .line 2231
    iget-object v0, v6, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    invoke-virtual {v6, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->registerPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    .line 2232
    iget-object v0, v6, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    invoke-virtual {v0, v8}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->setSwitchWideCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;)V

    .line 2235
    :cond_c
    iget-object v0, v6, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    if-eqz v0, :cond_d

    .line 2236
    new-instance v4, Lcom/transsion/camera/app/common/interactive/CommonInteractive;

    iget-object v1, v6, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerLayout:Landroid/view/View;

    iget-object v2, v6, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePikerArrowRoot:Landroid/view/View;

    iget-object v3, v6, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterPanelRootView:Landroid/view/ViewGroup;

    move-object v0, v4

    move-object v9, v4

    move-object/from16 v4, p0

    move-object/from16 v16, v7

    move v7, v5

    move-object/from16 v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/app/common/interactive/CommonInteractive;-><init>(Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/app/common/IAppUI;)V

    .line 2238
    iget-object v0, v6, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    invoke-virtual {v9, v0}, Lcom/transsion/camera/app/common/interactive/CommonInteractive;->setModeRegionControl(Lcom/transsion/camera/app/common/IModeRegionControl;)V

    .line 2239
    iget-object v0, v6, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    iget-object v1, v6, Lcom/transsion/camera/app/ui/BaseAppUI;->mBelowMainCtrlInflateRoot:Landroid/view/ViewGroup;

    iget-object v2, v6, Lcom/transsion/camera/app/ui/BaseAppUI;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0, v1, v9, v2}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->init(Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/interactive/CommonInteractive;Landroid/view/LayoutInflater;)V

    .line 2240
    iget-object v0, v6, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    invoke-virtual {v0, v8}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->setSwitchWideCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;)V

    .line 2241
    iget-object v0, v6, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    invoke-virtual {v6, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->registerPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    .line 2242
    iget-object v0, v6, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    invoke-virtual {v0, v15}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->setSwitchDualAndMainCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchDualAndMainCameraListener;)V

    goto :goto_0

    :cond_d
    move-object/from16 v16, v7

    move v7, v5

    .line 2245
    :goto_0
    iget-object v0, v6, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    if-eqz v0, :cond_e

    .line 2246
    iget-object v1, v6, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewGestureManager:Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;

    invoke-virtual {v1, v0, v7}, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;->registerGestureListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;I)V

    .line 2249
    :cond_e
    iget-object v0, v6, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    if-eqz v0, :cond_f

    .line 2250
    iget-object v1, v6, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewGestureManager:Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;

    invoke-virtual {v1, v0, v7}, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;->registerGestureListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;I)V

    .line 2253
    :cond_f
    iget-object v0, v6, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    if-eqz v0, :cond_10

    .line 2254
    iget-object v1, v6, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewGestureManager:Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;

    const/4 v2, 0x6

    invoke-virtual {v1, v0, v2}, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;->registerGestureListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;I)V

    .line 2258
    :cond_10
    iget-object v0, v6, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    if-eqz v0, :cond_11

    .line 2259
    new-instance v1, Lcom/transsion/camera/app/ui/BaseAppUI$FragmentListenerImpl;

    const/4 v2, 0x0

    invoke-direct {v1, v6, v2}, Lcom/transsion/camera/app/ui/BaseAppUI$FragmentListenerImpl;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;Lcom/transsion/camera/app/ui/BaseAppUI$1;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->setSettingFragmentListener(Lcom/transsion/camera/app/common/IAppUIListener$IFragmentListener;)V

    .line 2260
    iget-object v0, v6, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    invoke-virtual {v0, v8}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->setSwitchWideCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;)V

    .line 2261
    iget-object v0, v6, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    invoke-virtual {v0, v10}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->setSwitchTeleCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchLogicalCameraListener;)V

    .line 2262
    iget-object v0, v6, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    invoke-virtual {v0, v11}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->setSwitchPeriscopeCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchPeriscopeCameraListener;)V

    .line 2263
    iget-object v0, v6, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    invoke-virtual {v0, v12}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->setSwitchBlurCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchBlurCameraListener;)V

    .line 2264
    iget-object v0, v6, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    invoke-virtual {v0, v13}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->setSwitchDualCamBWCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchDualCamBWCameraListener;)V

    .line 2265
    iget-object v0, v6, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    invoke-virtual {v0, v14}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->setmHighDefinitionCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchHighDefinitionCameraListener;)V

    .line 2268
    :cond_11
    iget-object v0, v6, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    if-eqz v0, :cond_12

    .line 2269
    new-instance v1, Lcom/transsion/camera/app/ui/BaseAppUI$ModeChangedListenerImpl;

    const/4 v2, 0x0

    invoke-direct {v1, v6, v2}, Lcom/transsion/camera/app/ui/BaseAppUI$ModeChangedListenerImpl;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;Lcom/transsion/camera/app/ui/BaseAppUI$1;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->setModePickerListener(Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;)V

    goto :goto_1

    :cond_12
    const/4 v2, 0x0

    .line 2271
    :goto_1
    iget-object v0, v6, Lcom/transsion/camera/app/ui/BaseAppUI;->mCameraSwitcherUIManager:Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;

    if-eqz v0, :cond_13

    .line 2272
    new-instance v1, Lcom/transsion/camera/app/ui/BaseAppUI$CameraSwitchListenerImpl;

    invoke-direct {v1, v6, v2}, Lcom/transsion/camera/app/ui/BaseAppUI$CameraSwitchListenerImpl;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;Lcom/transsion/camera/app/ui/BaseAppUI$1;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->setCameraSwitchListener(Lcom/transsion/camera/app/common/IAppUIListener$ICameraSwitchListener;)V

    .line 2275
    :cond_13
    iget-object v0, v6, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f09047b

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2276
    iget-object v1, v6, Lcom/transsion/camera/app/ui/BaseAppUI;->mThermalThrottleUIManager:Lcom/transsion/camera/app/ui/manager/ThermalThrottleUIManager;

    if-eqz v1, :cond_14

    if-eqz v0, :cond_14

    .line 2277
    iget-object v2, v6, Lcom/transsion/camera/app/ui/BaseAppUI;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v1, v0, v2}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->inflateLayout(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    .line 2278
    iget-object v0, v6, Lcom/transsion/camera/app/ui/BaseAppUI;->mThermalThrottleUIManager:Lcom/transsion/camera/app/ui/manager/ThermalThrottleUIManager;

    iget-object v1, v6, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ScreenManager;->getCutoutHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/manager/ThermalThrottleUIManager;->setCutoutHeight(I)V

    .line 2279
    iget-object v0, v6, Lcom/transsion/camera/app/ui/BaseAppUI;->mThermalThrottleUIManager:Lcom/transsion/camera/app/ui/manager/ThermalThrottleUIManager;

    invoke-virtual {v0, v6}, Lcom/transsion/camera/app/ui/manager/ThermalThrottleUIManager;->setPopupOptionControl(Lcom/transsion/camera/app/common/IAppUIControl$IPopupOptionControl;)V

    .line 2282
    :cond_14
    iget-object v0, v6, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingFragmentManager:Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;

    if-eqz v0, :cond_15

    .line 2283
    new-instance v1, Lcom/transsion/camera/app/ui/BaseAppUI$OnFragmentStateListenerImpl;

    const/4 v2, 0x0

    invoke-direct {v1, v6, v2}, Lcom/transsion/camera/app/ui/BaseAppUI$OnFragmentStateListenerImpl;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;Lcom/transsion/camera/app/ui/BaseAppUI$1;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->setStateListener(Lcom/transsion/camera/app/common/IAppUIListener$IFragmentStateListener;)V

    goto :goto_2

    :cond_15
    const/4 v2, 0x0

    .line 2285
    :goto_2
    iget-object v0, v6, Lcom/transsion/camera/app/ui/BaseAppUI;->mModeOrderEditorManager:Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;

    if-eqz v0, :cond_16

    .line 2286
    new-instance v1, Lcom/transsion/camera/app/ui/BaseAppUI$OnEditorFragmentStateListenerImpl;

    invoke-direct {v1, v6, v2}, Lcom/transsion/camera/app/ui/BaseAppUI$OnEditorFragmentStateListenerImpl;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;Lcom/transsion/camera/app/ui/BaseAppUI$1;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->setStateListener(Lcom/transsion/camera/app/common/IAppUIListener$IFragmentStateListener;)V

    .line 2288
    :cond_16
    iget-object v0, v6, Lcom/transsion/camera/app/ui/BaseAppUI;->mEditWaterMarkManager:Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;

    if-eqz v0, :cond_17

    .line 2289
    new-instance v1, Lcom/transsion/camera/app/ui/BaseAppUI$EditWaterMarkFragmentStateListenerImpl;

    invoke-direct {v1, v6, v2}, Lcom/transsion/camera/app/ui/BaseAppUI$EditWaterMarkFragmentStateListenerImpl;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;Lcom/transsion/camera/app/ui/BaseAppUI$1;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->setStateListener(Lcom/transsion/camera/app/common/IAppUIListener$IFragmentStateListener;)V

    .line 2291
    :cond_17
    iget-object v0, v6, Lcom/transsion/camera/app/ui/BaseAppUI;->mRemoteCaptureManager:Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;

    if-eqz v0, :cond_18

    .line 2292
    new-instance v1, Lcom/transsion/camera/app/ui/BaseAppUI$RemoteCaptureFragmentStateListenerImpl;

    invoke-direct {v1, v6, v2}, Lcom/transsion/camera/app/ui/BaseAppUI$RemoteCaptureFragmentStateListenerImpl;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;Lcom/transsion/camera/app/ui/BaseAppUI$1;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->setStateListener(Lcom/transsion/camera/app/common/IAppUIListener$IFragmentStateListener;)V

    .line 2295
    :cond_18
    invoke-direct/range {p0 .. p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->doUpdateTopBarSettingUIList()V

    .line 2296
    invoke-direct/range {p0 .. p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->doUpdateInteractiveUIList()V

    .line 2297
    invoke-direct/range {p0 .. p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->doUpdateHelpGuide()V

    .line 2298
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->doUpdateCurrentModeUI()V

    .line 2299
    iget-object v0, v6, Lcom/transsion/camera/app/ui/BaseAppUI;->mFoldUIManager:Lcom/transsion/camera/app/common/manager/AbstractFoldUIManager;

    if-eqz v0, :cond_19

    .line 2300
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/manager/AbstractFoldUIManager;->doSetupFoldUI()V

    :cond_19
    const-string v0, "[PreviewPerformance] doSetupUIManagers end"

    move-object/from16 v1, v16

    .line 2302
    invoke-static {v1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2303
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    return-void
.end method

.method public doUpdateCurrentModeUI()V
    .locals 0

    .line 3816
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    if-eqz p0, :cond_0

    .line 3817
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->flashModeListCurrentCamera()V

    :cond_0
    return-void
.end method

.method public endHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V
    .locals 0

    .line 1183
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    if-eqz p0, :cond_0

    .line 1184
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/HintUIManager;->endHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_0
    return-void
.end method

.method public enterEditWaterMarkFragment()V
    .locals 1

    const/16 v0, 0x66

    .line 3809
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->notifyRawActionToAppUI(I)V

    .line 3810
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    if-eqz p0, :cond_0

    .line 3811
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->dismissPopupWithoutAnimation()Z

    :cond_0
    return-void
.end method

.method public enterModeEditorFragment()V
    .locals 1

    const/16 v0, 0x55

    .line 3801
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->notifyRawActionToAppUI(I)V

    .line 3802
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    if-eqz p0, :cond_0

    .line 3803
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->dismissPopupWithoutAnimation()Z

    :cond_0
    return-void
.end method

.method public enterRemoteCaptureFragment()V
    .locals 1

    const/16 v0, 0x89

    .line 3916
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->notifyRawActionToAppUI(I)V

    .line 3917
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->dismissPopupWithoutAnimation()Z

    return-void
.end method

.method public exitAllFragments()V
    .locals 2

    .line 1867
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingFragmentManager:Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1868
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->exitSettingFragment(Ljava/lang/String;)V

    .line 1870
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHelpGuideUIManager:Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

    if-eqz v0, :cond_1

    .line 1871
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->exitGuideFragment()V

    .line 1873
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModeOrderEditorManager:Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;

    if-eqz v0, :cond_2

    .line 1874
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->exitEditorFragment()V

    .line 1876
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mEditWaterMarkManager:Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;

    if-eqz v0, :cond_3

    .line 1877
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->exitEditWaterMarkFragment()V

    .line 1879
    :cond_3
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRemoteCaptureManager:Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;

    if-eqz p0, :cond_4

    .line 1880
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->exitRemoteCaptureFragment()V

    :cond_4
    return-void
.end method

.method public getAboveMainCtrlInflateRoot()Landroid/view/ViewGroup;
    .locals 0

    .line 1891
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModeAboveMainCtrlInflateRoot:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public getActionSound()Lcom/transsion/camera/utils/sound/IActionSound;
    .locals 0

    .line 2030
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    return-object p0
.end method

.method public getAodUIOrientation()I
    .locals 0

    .line 2795
    iget p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mAodUIOrientation:I

    return p0
.end method

.method public getBelowMainCtrlInflateRoot()Landroid/view/ViewGroup;
    .locals 0

    .line 1896
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mBelowMainCtrlInflateRoot:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public getBottomBarHeight()I
    .locals 0

    .line 1970
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScreenManager;->getBottomHeight()I

    move-result p0

    return p0
.end method

.method public getCurrentActionState()I
    .locals 0

    .line 454
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCameraOperateAction:Lcom/transsion/camera/app/common/mode/CameraOperateAction;

    if-eqz p0, :cond_0

    .line 455
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->getCurrentActionState()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getCurrentAsdHint()Lcom/transsion/camera/app/common/ui/HintInfo;
    .locals 0

    .line 1197
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    if-eqz p0, :cond_0

    .line 1198
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/HintUIManager;->getCurrentAsdHint()Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCurrentUIState()I
    .locals 0

    .line 1029
    iget p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentAppUIState:I

    return p0
.end method

.method public getCutoutHeight()I
    .locals 0

    .line 1960
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScreenManager;->getCutoutHeight()I

    move-result p0

    return p0
.end method

.method public getGoogleLensUIButtonVisible()I
    .locals 0

    .line 3941
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mGoogleLensUIManager:Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager;

    if-nez p0, :cond_0

    const/16 p0, 0x8

    return p0

    .line 3944
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager;->getGoogleLensUIButtonVisible()I

    move-result p0

    return p0
.end method

.method public getGpuAlgorithmManager()Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;
    .locals 0

    .line 511
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mGpuAlgorithmManager:Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;

    return-object p0
.end method

.method public getHintState()Z
    .locals 0

    .line 1055
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    if-eqz p0, :cond_0

    .line 1056
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/HintUIManager;->getHintState()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getModeInflateRoot()Landroid/view/ViewGroup;
    .locals 0

    .line 1886
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModeInflateRoot:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public getModeInflateScrollRoot()Landroid/view/ViewGroup;
    .locals 0

    .line 1925
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModeInflateScrollRoot:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public getModePickerLayout()Landroid/view/View;
    .locals 0

    .line 1901
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    return-object p0
.end method

.method public getModePlusBottomBarHeight()I
    .locals 0

    .line 1975
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScreenManager;->getModePlusBottomBarHeight()I

    move-result p0

    return p0
.end method

.method public getMoreModeGuideLeftRoot()Landroid/view/View;
    .locals 0

    .line 1906
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mMoreModeGuideLeftRoot:Landroid/view/View;

    return-object p0
.end method

.method public getNavigationBarHeight()I
    .locals 0

    .line 1930
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScreenManager;->getNavigationHeight()I

    move-result p0

    return p0
.end method

.method public getPreviewBackgroundOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;
    .locals 0

    .line 506
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewBackgroundOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    return-object p0
.end method

.method public getPreviewOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;
    .locals 0

    .line 501
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    return-object p0
.end method

.method public getPreviewSurfaceType()I
    .locals 0

    .line 556
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->getPreviewSurfaceType()I

    move-result p0

    return p0
.end method

.method public getRecordingOrientation()I
    .locals 0

    .line 3887
    iget p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRecordingOrientation:I

    return p0
.end method

.method public getScreenFormType()I
    .locals 0

    .line 1217
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    if-eqz p0, :cond_0

    .line 1218
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getScreenState()I
    .locals 1

    .line 3200
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/transsion/camera/app/ui/widget/RootLayout;

    if-eqz v0, :cond_0

    .line 3201
    check-cast p0, Lcom/transsion/camera/app/ui/widget/RootLayout;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/RootLayout;->getScreenState()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public getSettingUIProvider()Lcom/transsion/camera/app/common/provider/SettingUIProvider;
    .locals 0

    .line 3208
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingUIProvider:Lcom/transsion/camera/app/common/provider/SettingUIProvider;

    return-object p0
.end method

.method public getShutterButtonHeight()I
    .locals 0

    .line 1940
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScreenManager;->getShutterButtonHeight()I

    move-result p0

    return p0
.end method

.method public getShutterPanelPaddingHeight()I
    .locals 0

    .line 1935
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScreenManager;->getShutterPanelBasePaddingHeight()I

    move-result p0

    return p0
.end method

.method public getShutterTypeSelftimerOff()I
    .locals 0

    .line 963
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->getShutterTypeSelftimerOff()I

    move-result p0

    return p0
.end method

.method public getShutterTypeSelftimerOn()I
    .locals 0

    .line 984
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->getShutterTypeSelftimerOn()I

    move-result p0

    return p0
.end method

.method public getThumbnail()Landroid/graphics/Bitmap;
    .locals 0

    .line 649
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mThumbnailUIManager:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    if-eqz p0, :cond_0

    .line 650
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getToolBarOriginPaddingHeight()I
    .locals 0

    .line 1945
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScreenManager;->getToolBarOriginPaddingHeight()I

    move-result p0

    return p0
.end method

.method public getTopRegionHeight()I
    .locals 0

    .line 1965
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScreenManager;->getTopBarHeight()I

    move-result p0

    return p0
.end method

.method public getTriggerSelfTimerPriority()I
    .locals 3

    .line 978
    sget-object v0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTriggerSelfTimerPriority: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTriggerSelfTimerPriority:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 979
    iget p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTriggerSelfTimerPriority:I

    return p0
.end method

.method public getVoiceIntent()[Z
    .locals 0

    .line 1664
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mVoiceParameters:[Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getVolumeIntercept()Z
    .locals 0

    .line 2809
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIntercept:Z

    return p0
.end method

.method public gotoGallery(Landroid/view/View;)V
    .locals 0

    .line 1733
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mThumbnailUIManager:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    if-eqz p0, :cond_0

    .line 1734
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->performClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public hideAllHints()V
    .locals 0

    .line 1165
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    if-eqz p0, :cond_0

    .line 1166
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/HintUIManager;->hideAllHint()V

    :cond_0
    return-void
.end method

.method public hideCustomPreviewCover()V
    .locals 2

    .line 522
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIHandler:Lcom/transsion/camera/app/ui/BaseAppUI$UIHandler;

    const/16 v1, 0x6f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 523
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIHandler:Lcom/transsion/camera/app/ui/BaseAppUI$UIHandler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public hideFrontDualFlashUI()V
    .locals 2

    .line 1078
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1079
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/manager/HintUIManager;->updateFrontDualFlashUIState(Z)V

    :cond_0
    const/16 v0, 0xab

    .line 1081
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->notifyRawActionToAppUI(I)V

    return-void
.end method

.method public hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V
    .locals 0

    .line 1158
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    if-eqz p0, :cond_0

    .line 1159
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/HintUIManager;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_0
    return-void
.end method

.method public hideInteractiveUI()V
    .locals 0

    .line 1128
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    if-eqz p0, :cond_0

    .line 1129
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->hide()V

    :cond_0
    return-void
.end method

.method public hidePopupOption()V
    .locals 0

    .line 3787
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    if-eqz p0, :cond_0

    .line 3788
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->dismissPopup()Z

    :cond_0
    return-void
.end method

.method public hideWideCamera()V
    .locals 0

    .line 3749
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    if-eqz p0, :cond_0

    .line 3750
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->hideWideCamera()V

    :cond_0
    return-void
.end method

.method public init(ZLcom/transsion/camera/app/intent/IntentParser;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;Landroid/app/FragmentManager;Landroid/content/ContentResolver;Lcom/transsion/camera/utils/sound/IActionSound;)V
    .locals 0

    .line 1466
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mFromIntent:Z

    .line 1467
    iput-object p3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    .line 1468
    iput-object p7, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    .line 1469
    iput-object p4, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mLayoutInflater:Landroid/view/LayoutInflater;

    const p1, 0x7f09035c

    .line 1471
    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayUIRoot:Landroid/view/ViewGroup;

    .line 1473
    new-instance p1, Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-direct {p1}, Lcom/transsion/camera/app/ui/ScrollConsumer;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    .line 1474
    new-instance p1, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;

    iget-object p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->pocketScreen()Z

    move-result p3

    invoke-direct {p1, p2, p3}, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;-><init>(Landroid/content/Context;Z)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewGestureManager:Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;

    .line 1475
    new-instance p1, Lcom/transsion/camera/app/common/mode/CameraOperateAction;

    iget-object p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRawActionCallback:Lcom/transsion/camera/app/common/mode/CameraOperateAction$RawActionHandleCallback;

    invoke-direct {p1, p2}, Lcom/transsion/camera/app/common/mode/CameraOperateAction;-><init>(Lcom/transsion/camera/app/common/mode/CameraOperateAction$RawActionHandleCallback;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCameraOperateAction:Lcom/transsion/camera/app/common/mode/CameraOperateAction;

    .line 1476
    new-instance p1, Lcom/transsion/camera/app/ui/PreviewGestureScrollAdapter;

    iget-object p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-direct {p1, p2}, Lcom/transsion/camera/app/ui/PreviewGestureScrollAdapter;-><init>(Lcom/transsion/camera/app/ui/IScroll;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewGestureScrollAdapter:Lcom/transsion/camera/app/ui/PreviewGestureScrollAdapter;

    const/16 p2, 0x8

    .line 1477
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/BaseAppUI;->registerPreviewGestureListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;I)V

    .line 1479
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/transsion/camera/utils/FeatureSupport;->getSupportFoldUIType(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSupportFoldUIType:I

    .line 1480
    sget-object p1, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mSupportFoldUIType:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSupportFoldUIType:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", mSecureCamera:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSecureCamera:Z

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method protected isGoogleLensSupport()Z
    .locals 1

    .line 3186
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSecureCamera:Z

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mVoiceInteraction:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isModePanelVisible()Z
    .locals 0

    .line 2025
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->isModePanelVisible()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isModeTabScrolling()Z
    .locals 0

    .line 791
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 794
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->isModeTabScrolling()Z

    move-result p0

    return p0
.end method

.method public isPhysicalKeyEnable()Z
    .locals 0

    .line 2814
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->isModeTabScrolling()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isSecureCamera()Z
    .locals 0

    .line 3191
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSecureCamera:Z

    return p0
.end method

.method public isVoiceInteraction()Z
    .locals 0

    .line 3936
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mVoiceInteraction:Z

    return p0
.end method

.method public loadLatestThumbnail(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1721
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mThumbnailUIManager:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSecureCamera:Z

    if-nez p0, :cond_0

    .line 1722
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->loadLatestThumbnail(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method public loadThumbnailByUri(Ljava/util/ArrayList;Landroid/net/Uri;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/net/Uri;",
            ")V"
        }
    .end annotation

    .line 1727
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mThumbnailUIManager:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    if-eqz p0, :cond_0

    .line 1728
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->loadThumbnailByUri(Ljava/util/ArrayList;Landroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method public needBuildBlurCoverView(Z)V
    .locals 0

    .line 528
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->needBuildBlurCoverView(Z)V

    return-void
.end method

.method public notifyRawActionToAppUI(I)V
    .locals 5

    .line 423
    sget-object v0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyRawActionToAppUI action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->actionToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mIsPaused = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsPaused:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 423
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/16 v1, 0x9

    if-ne p1, v1, :cond_0

    .line 425
    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsPaused:Z

    if-eqz v2, :cond_0

    .line 426
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mFirstSteadyFrameFlag:Z

    .line 428
    :cond_0
    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsPaused:Z

    if-eqz v2, :cond_1

    return-void

    :cond_1
    const/16 v2, 0x63

    if-ne p1, v2, :cond_2

    .line 432
    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mFrameOnceCome:Z

    if-nez v3, :cond_2

    .line 433
    iget-object v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIHandler:Lcom/transsion/camera/app/ui/BaseAppUI$UIHandler;

    const/16 v4, 0x6a

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 434
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mFrameOnceCome:Z

    :cond_2
    if-ne p1, v1, :cond_3

    .line 437
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mVIPCaptureManager:Lcom/transsion/camera/app/common/manager/AbstractFoldUIManager;

    if-eqz v0, :cond_3

    const/16 v3, 0xa8

    .line 438
    invoke-virtual {v0, v3}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->notifyCameraOperateActionToUI(I)V

    .line 440
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCameraOperateAction:Lcom/transsion/camera/app/common/mode/CameraOperateAction;

    if-eqz v0, :cond_4

    .line 441
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->rawActionHandle(I)V

    :cond_4
    const/16 v0, 0x1f

    if-ne p1, v0, :cond_5

    .line 443
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mFirstSteadyFrameFlag:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    .line 444
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mFirstSteadyFrameFlag:Z

    .line 445
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/BaseAppUI;->notifyRawActionToAppUI(I)V

    :cond_5
    if-eq p1, v2, :cond_6

    const/16 v0, 0x20

    if-ne p1, v0, :cond_7

    .line 448
    :cond_6
    sget-object p1, Lcom/transsion/camera/app/manager/OptimizeManager$Holder;->instance:Lcom/transsion/camera/app/manager/OptimizeManager;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/manager/OptimizeManager;->bindGalleryService(Landroid/content/Context;)V

    :cond_7
    return-void
.end method

.method public notifyScreenFormChanged(IZZ)V
    .locals 6

    .line 1225
    sget-object v0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyScreenFormChanged, screenFormType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", showCover:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", animation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mUIManagerSetup: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIManagerSetup:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1227
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIManagerSetup:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_3

    .line 1228
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mNeedChangeScreenForm:Z

    .line 1229
    iget-object p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mFoldUIManager:Lcom/transsion/camera/app/common/manager/AbstractFoldUIManager;

    if-eqz p2, :cond_0

    .line 1230
    invoke-virtual {p2, v3}, Lcom/transsion/camera/app/common/manager/AbstractFoldUIManager;->setChangeScreenForm(Z)V

    .line 1232
    :cond_0
    iget p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOrientation:I

    iget-object p3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {p3}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result p3

    invoke-virtual {p0, p2, p3, v2}, Lcom/transsion/camera/app/ui/BaseAppUI;->updateBottomBarLayout(IIZ)V

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    goto :goto_0

    :cond_1
    move v3, v2

    .line 1233
    :goto_0
    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/ui/BaseAppUI;->resetUIRootParentLayout(Z)V

    .line 1234
    iget-object p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    if-eqz p2, :cond_2

    .line 1235
    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->resetRootParentLayout()V

    .line 1237
    :cond_2
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    invoke-virtual {p0, p1, v2}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->onScreenFormChanged(IZ)V

    .line 1238
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[FoldUIForm]notifyScreenFormChanged, delay change screenFormType:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_3
    const/16 v0, 0xa0

    .line 1242
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->notifyRawActionToAppUI(I)V

    .line 1243
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenFormResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    const-string v1, "screen_form_state"

    if-eqz v0, :cond_4

    const-string v4, "form_change_start"

    .line 1244
    invoke-virtual {v0, v1, v4}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    const-wide/16 v4, 0x0

    .line 1247
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModeDataInfoListener:Lcom/transsion/camera/app/common/IAppUIListener$IModeDataInfoListener;

    if-eqz v0, :cond_5

    .line 1248
    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIListener$IModeDataInfoListener;->getModePreviewSize()Landroid/util/Size;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1250
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float/2addr v4, v5

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v4, v0

    float-to-double v4, v4

    .line 1253
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    invoke-virtual {v0, p1, p3}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->onScreenFormChanged(IZ)V

    .line 1254
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->isSupportPreviewHoverForm()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1255
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    invoke-virtual {v0, p2, p3, v4, v5}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->updatePreviewLayout(ZZD)V

    .line 1257
    :cond_6
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mFoldUIManager:Lcom/transsion/camera/app/common/manager/AbstractFoldUIManager;

    if-eqz v0, :cond_7

    .line 1258
    invoke-virtual {v0, p1, p3}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onScreenFormChanged(IZ)V

    .line 1260
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mVIPCaptureManager:Lcom/transsion/camera/app/common/manager/AbstractFoldUIManager;

    if-eqz v0, :cond_8

    .line 1261
    invoke-virtual {v0, p1, p3}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onScreenFormChanged(IZ)V

    :cond_8
    const-string v0, "form_change_end"

    const/16 v4, 0xa1

    if-eqz p3, :cond_a

    .line 1264
    iget-object p3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    invoke-static {p3}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_9

    .line 1265
    invoke-direct {p0, p1, v3}, Lcom/transsion/camera/app/ui/BaseAppUI;->notifyAllScreenFormListeners(IZ)V

    .line 1266
    invoke-virtual {p0, v4}, Lcom/transsion/camera/app/ui/BaseAppUI;->notifyRawActionToAppUI(I)V

    .line 1267
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenFormResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    if-eqz p0, :cond_b

    .line 1268
    invoke-virtual {p0, v1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 1271
    :cond_9
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/BaseAppUI;->runRootAnimatorWhenFormChanged(IZ)V

    goto :goto_1

    .line 1274
    :cond_a
    invoke-direct {p0, p1, v2}, Lcom/transsion/camera/app/ui/BaseAppUI;->notifyAllScreenFormListeners(IZ)V

    .line 1275
    invoke-virtual {p0, v4}, Lcom/transsion/camera/app/ui/BaseAppUI;->notifyRawActionToAppUI(I)V

    .line 1276
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenFormResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    if-eqz p0, :cond_b

    .line 1277
    invoke-virtual {p0, v1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_b
    :goto_1
    return-void
.end method

.method public onBackPressed()Z
    .locals 2

    .line 1995
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    if-eqz v0, :cond_0

    .line 1996
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->hideMoreMode()V

    .line 1998
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mVIPCaptureManager:Lcom/transsion/camera/app/common/manager/AbstractFoldUIManager;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 2001
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    .line 2002
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    if-eqz v0, :cond_3

    .line 2003
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    if-eqz v0, :cond_4

    .line 2004
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_4
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    if-eqz p0, :cond_5

    .line 2005
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onBackPressed()Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    :cond_6
    :goto_0
    return v1
.end method

.method public onBatteryStatusChanged(ZII)V
    .locals 1

    .line 2800
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIManagers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;

    if-eqz v0, :cond_0

    .line 2802
    invoke-virtual {v0, p1, p2, p3}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onBatteryStatusChanged(ZII)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/Context;Landroid/content/res/Configuration;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onContinuousShotProgress(II)V
    .locals 0

    .line 3695
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContinuousShotUIManager:Lcom/transsion/camera/app/ui/manager/ContinuousShotUIManager;

    if-nez p0, :cond_0

    .line 3696
    sget-object p0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mContinuousShotUIManager is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 3699
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/manager/ContinuousShotUIManager;->onContinuousShotProgress(II)V

    return-void
.end method

.method public onContinuousShotStop()V
    .locals 1

    .line 3704
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContinuousShotUIManager:Lcom/transsion/camera/app/ui/manager/ContinuousShotUIManager;

    if-nez p0, :cond_0

    .line 3705
    sget-object p0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "mContinuousShotUIManager is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 3708
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/ContinuousShotUIManager;->onContinuousShotStop()V

    return-void
.end method

.method public onEnterAnimationComplete()V
    .locals 0

    .line 1717
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->onEnterAnimationComplete()V

    return-void
.end method

.method public onModePanelDistanceChanged(FZ)V
    .locals 1

    .line 3777
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    if-eqz v0, :cond_0

    .line 3778
    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->onModePanelDistanceChanged(FZ)V

    .line 3780
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    if-eqz p0, :cond_1

    .line 3781
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->onModePanelDistanceChanged(FZ)V

    :cond_1
    return-void
.end method

.method public onModePaused()V
    .locals 0

    .line 724
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    if-eqz p0, :cond_0

    .line 725
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->pause()V

    :cond_0
    return-void
.end method

.method public onModeSettingReady()V
    .locals 3

    .line 731
    sget-object v0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PreviewPerformance] onModeSettingReady, mIsUIManagerSetuped: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIManagerSetup:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mSpecialCameraChange: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSpecialCameraChange:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 733
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIManagerSetup:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 734
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIManagerSetup:Z

    .line 735
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIHandler:Lcom/transsion/camera/app/ui/BaseAppUI$UIHandler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 736
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIHandler:Lcom/transsion/camera/app/ui/BaseAppUI$UIHandler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 738
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIHandler:Lcom/transsion/camera/app/ui/BaseAppUI$UIHandler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 739
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIHandler:Lcom/transsion/camera/app/ui/BaseAppUI$UIHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 740
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIHandler:Lcom/transsion/camera/app/ui/BaseAppUI$UIHandler;

    const/16 v1, 0x70

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 741
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIHandler:Lcom/transsion/camera/app/ui/BaseAppUI$UIHandler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method

.method public onOrientationChanged()V
    .locals 2

    .line 2752
    iget v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOrientation:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    .line 2753
    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/ui/BaseAppUI;->onOrientationChanged(IZ)V

    :cond_0
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 1

    const/4 v0, 0x1

    .line 2759
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->onOrientationChanged(IZ)V

    return-void
.end method

.method public onOrientationChanged(IZ)V
    .locals 3

    .line 2763
    iput p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOrientation:I

    .line 2764
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIManagerSetup:Z

    if-eqz v0, :cond_7

    .line 2765
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->showOrHideSystemUI()V

    .line 2767
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3

    .line 2769
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsVideoRecording:Z

    if-eqz v0, :cond_0

    .line 2770
    iget v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRecordingOrientation:I

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    if-nez v0, :cond_2

    if-nez p2, :cond_1

    goto :goto_1

    .line 2775
    :cond_1
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->runBottomBarRootAnimator()V

    goto :goto_2

    .line 2773
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v0

    invoke-virtual {p0, v1, v0, v2}, Lcom/transsion/camera/app/ui/BaseAppUI;->updateBottomBarLayout(IIZ)V

    goto :goto_2

    .line 2777
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    .line 2778
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 2779
    :cond_4
    iget v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOrientation:I

    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/transsion/camera/app/ui/BaseAppUI;->updateBottomBarLayout(IIZ)V

    .line 2782
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIManagers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/manager/AbstractViewManager;

    if-eqz v1, :cond_6

    .line 2784
    invoke-virtual {v1, p1, p2}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onOrientationChanged(IZ)V

    goto :goto_3

    :cond_7
    const/16 p2, 0x5a

    if-eq p1, p2, :cond_8

    const/16 p2, 0x10e

    if-eq p1, p2, :cond_8

    .line 2789
    iput p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mAodUIOrientation:I

    :cond_8
    return-void
.end method

.method public onPreviewClick()Z
    .locals 1

    .line 2017
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    .line 2018
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    if-eqz v0, :cond_1

    .line 2019
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    if-eqz p0, :cond_2

    .line 2020
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->onBackPressed()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public onQuitVIPSelfie()V
    .locals 0

    .line 3903
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mVIPCaptureManager:Lcom/transsion/camera/app/common/manager/AbstractFoldUIManager;

    if-eqz p0, :cond_0

    .line 3904
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/manager/AbstractFoldUIManager;->quitVIPSelfie()V

    :cond_0
    return-void
.end method

.method public onSettingOptionClick(Ljava/lang/String;)V
    .locals 3

    .line 607
    sget-object v0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSettingOptionClick: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 608
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    if-eqz v0, :cond_0

    .line 609
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->onSettingOptionClick(Ljava/lang/String;)V

    .line 611
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModeUIControl:Lcom/transsion/camera/app/common/IAppUIControl$IModeUIControl;

    if-eqz p0, :cond_1

    .line 612
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$IModeUIControl;->onSettingOptionClick(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onShutterClick(I)V
    .locals 2

    .line 1403
    iget v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentAppUIState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    return-void

    .line 1406
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->triggerShutterClick(I)V

    return-void
.end method

.method public onShutterLongClickEnd()V
    .locals 0

    .line 1416
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->triggerShutterUp()V

    return-void
.end method

.method public onShutterLongClickStart(I)V
    .locals 0

    .line 1411
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->triggerShutterLongClick(I)V

    return-void
.end method

.method public onThermalThrottleChanged(I)V
    .locals 0

    .line 2746
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mThermalThrottleUIManager:Lcom/transsion/camera/app/ui/manager/ThermalThrottleUIManager;

    if-eqz p0, :cond_0

    .line 2747
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/ThermalThrottleUIManager;->onThermalThrottleReached(I)V

    :cond_0
    return-void
.end method

.method public onUserInteraction()V
    .locals 4

    .line 2818
    sget-object v0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onUserInteraction"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2819
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIHandler:Lcom/transsion/camera/app/ui/BaseAppUI$UIHandler;

    const/16 v1, 0x72

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2820
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 2821
    iget v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOrientation:I

    const/16 v2, 0x5a

    if-eq v0, v2, :cond_0

    const/16 v2, 0x10e

    if-ne v0, v2, :cond_1

    .line 2822
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIHandler:Lcom/transsion/camera/app/ui/BaseAppUI$UIHandler;

    const-wide/16 v2, 0x1388

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void
.end method

.method public onZoomClick(Z)V
    .locals 2

    .line 1421
    iget v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentAppUIState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1422
    sget-object p1, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onZoomClick,return], mCurrentAppUIState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentAppUIState:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1425
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mZoomKeyEventCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1426
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mZoomKeyEventCallbacks:Ljava/util/List;

    new-instance v0, Lcom/transsion/camera/app/ui/BaseAppUI$$ExternalSyntheticLambda9;

    invoke-direct {v0, p1}, Lcom/transsion/camera/app/ui/BaseAppUI$$ExternalSyntheticLambda9;-><init>(Z)V

    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    :cond_1
    return-void
.end method

.method public onZoomScaleEnd(Z)V
    .locals 2

    .line 1454
    iget v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentAppUIState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    return-void

    .line 1457
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mZoomKeyEventCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1458
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mZoomKeyEventCallbacks:Ljava/util/List;

    new-instance v0, Lcom/transsion/camera/app/ui/BaseAppUI$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/transsion/camera/app/ui/BaseAppUI$$ExternalSyntheticLambda1;-><init>(Z)V

    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    :cond_1
    return-void
.end method

.method public onZoomScaleStart(Z)V
    .locals 2

    .line 1432
    iget v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentAppUIState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1433
    sget-object p1, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onZoomScaleStart,return], mCurrentAppUIState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentAppUIState:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1436
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mZoomKeyEventCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1437
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mZoomKeyEventCallbacks:Ljava/util/List;

    new-instance v0, Lcom/transsion/camera/app/ui/BaseAppUI$$ExternalSyntheticLambda8;

    invoke-direct {v0, p1}, Lcom/transsion/camera/app/ui/BaseAppUI$$ExternalSyntheticLambda8;-><init>(Z)V

    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    :cond_1
    return-void
.end method

.method public onZoomScaling(Z)V
    .locals 3

    .line 1443
    iget v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentAppUIState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1444
    sget-object v0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onZoomScaling] isIncrease:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", mCurrentAppUIState:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentAppUIState:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1447
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mZoomKeyEventCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1448
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mZoomKeyEventCallbacks:Ljava/util/List;

    new-instance v0, Lcom/transsion/camera/app/ui/BaseAppUI$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/transsion/camera/app/ui/BaseAppUI$$ExternalSyntheticLambda0;-><init>(Z)V

    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    :cond_1
    return-void
.end method

.method public pause()V
    .locals 3

    const/16 v0, 0x1b

    .line 1572
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->notifyRawActionToAppUI(I)V

    .line 1573
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 1574
    :try_start_0
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsPaused:Z

    .line 1575
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIHandler:Lcom/transsion/camera/app/ui/BaseAppUI$UIHandler;

    const/16 v2, 0x69

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1576
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 1577
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsVideoRecording:Z

    const/4 v1, -0x1

    .line 1578
    iput v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRecordingOrientation:I

    .line 1579
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    if-eqz v1, :cond_0

    .line 1580
    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/manager/HintUIManager;->pause()V

    .line 1582
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mToastUIManager:Lcom/transsion/camera/app/ui/manager/ToastUIManager;

    if-eqz v1, :cond_1

    .line 1583
    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/manager/ToastUIManager;->pause()V

    .line 1585
    :cond_1
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    if-eqz v1, :cond_2

    .line 1586
    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->pause()V

    .line 1588
    :cond_2
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    if-eqz v1, :cond_3

    .line 1589
    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->pause()V

    .line 1591
    :cond_3
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    if-eqz v1, :cond_4

    .line 1592
    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->pause()V

    .line 1594
    :cond_4
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    if-eqz v1, :cond_5

    .line 1595
    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->pause()V

    .line 1597
    :cond_5
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    if-eqz v1, :cond_6

    .line 1598
    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->pause()V

    .line 1599
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->dismissPopup()Z

    .line 1601
    :cond_6
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewGestureScrollAdapter:Lcom/transsion/camera/app/ui/PreviewGestureScrollAdapter;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/PreviewGestureScrollAdapter;->onPause()V

    .line 1603
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mThermalThrottleUIManager:Lcom/transsion/camera/app/ui/manager/ThermalThrottleUIManager;

    if-eqz v1, :cond_7

    .line 1604
    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/manager/ThermalThrottleUIManager;->pause()V

    :cond_7
    const/4 v1, 0x0

    .line 1606
    iput-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mVoiceParameters:[Z

    .line 1607
    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->setStartParameters(ZZZI)V

    .line 1608
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootAnimatorInSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1609
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootAnimatorInSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1611
    :cond_8
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootAnimatorOutSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1612
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootAnimatorOutSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1614
    :cond_9
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mMainRootAnimatorIn:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1615
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mMainRootAnimatorIn:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1617
    :cond_a
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mFoldUIManager:Lcom/transsion/camera/app/common/manager/AbstractFoldUIManager;

    if-eqz v0, :cond_b

    .line 1618
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->pause()V

    .line 1620
    :cond_b
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mVIPCaptureManager:Lcom/transsion/camera/app/common/manager/AbstractFoldUIManager;

    if-eqz v0, :cond_c

    .line 1621
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->pause()V

    .line 1623
    :cond_c
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050072

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x6

    .line 1624
    invoke-static {v0}, Lcom/transsion/camera/utils/aal/AalUtil;->setCurrentAALFunction(I)V

    .line 1626
    :cond_d
    sget-object v0, Lcom/transsion/camera/app/manager/OptimizeManager$Holder;->instance:Lcom/transsion/camera/app/manager/OptimizeManager;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/manager/OptimizeManager;->unBindGalleryService(Landroid/content/Context;)V

    return-void

    :catchall_0
    move-exception p0

    .line 1576
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public pausePreviewUI()V
    .locals 0

    .line 1644
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->pause()V

    return-void
.end method

.method public pocketScreen()Z
    .locals 1

    .line 1484
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result p0

    const/4 v0, 0x5

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public processFoldingFeatureState(Landroid/content/Context;I)V
    .locals 6

    .line 1305
    sget-object v0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FoldUIForm]processFoldingFeatureState state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/transsion/camera/app/common/FoldHingeUIState;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1307
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mVIPCaptureManager:Lcom/transsion/camera/app/common/manager/AbstractFoldUIManager;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 1308
    iget v4, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSupportFoldUIType:I

    invoke-virtual {v1, p1, p2, v4, v3}, Lcom/transsion/camera/app/common/manager/AbstractFoldUIManager;->checkFoldingFeatureState(Landroid/content/Context;IIZ)Z

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    .line 1312
    :goto_0
    iget-object v4, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mFoldUIManager:Lcom/transsion/camera/app/common/manager/AbstractFoldUIManager;

    if-eqz v4, :cond_1

    .line 1313
    iget v5, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSupportFoldUIType:I

    xor-int/2addr v1, v3

    invoke-virtual {v4, p1, p2, v5, v1}, Lcom/transsion/camera/app/common/manager/AbstractFoldUIManager;->checkFoldingFeatureState(Landroid/content/Context;IIZ)Z

    move-result p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x3

    if-ne p2, p1, :cond_2

    .line 1316
    iget-object p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {p2, p1}, Lcom/transsion/camera/app/ui/ScreenManager;->updateScreenFormType(I)Z

    move-result p1

    goto :goto_1

    :cond_2
    if-ne p2, v3, :cond_4

    .line 1318
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1319
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {p1, v2}, Lcom/transsion/camera/app/ui/ScreenManager;->updateScreenFormType(I)Z

    move-result p1

    goto :goto_1

    .line 1321
    :cond_3
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {p1, v3}, Lcom/transsion/camera/app/ui/ScreenManager;->updateScreenFormType(I)Z

    move-result p1

    goto :goto_1

    :cond_4
    move p1, v2

    .line 1325
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[FoldUIForm]processFoldingFeatureState ret: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_5

    .line 1327
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result p1

    iget-boolean p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsPaused:Z

    xor-int/2addr p2, v3

    invoke-virtual {p0, p1, v2, p2}, Lcom/transsion/camera/app/ui/BaseAppUI;->notifyScreenFormChanged(IZZ)V

    :cond_5
    return-void
.end method

.method public registerHintStateListener(Lcom/transsion/camera/app/common/IAppUIControl$HintStateChangeListener;)V
    .locals 0

    .line 1041
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    if-eqz p0, :cond_0

    .line 1042
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/HintUIManager;->registerHintStateListener(Lcom/transsion/camera/app/common/IAppUIControl$HintStateChangeListener;)V

    :cond_0
    return-void
.end method

.method public registerPreviewGestureListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;I)V
    .locals 0

    .line 580
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewGestureManager:Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;->registerGestureListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;I)V

    return-void
.end method

.method public registerPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V
    .locals 0

    .line 590
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->registerPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    return-void
.end method

.method public registerScreenFormListener(Lcom/transsion/camera/app/common/IScreenFormControl;)V
    .locals 2

    .line 1284
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenFormTypeListeners:Ljava/util/List;

    monitor-enter v0

    .line 1285
    :try_start_0
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenFormTypeListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1286
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenFormTypeListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1288
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public registerShutterListener(Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;I)V
    .locals 0

    .line 861
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->registerOnShutterListener(Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;I)V

    return-void
.end method

.method public registerZoomKeyEventCallback(Lcom/transsion/camera/app/common/IAppUIControl$IZoomKeyEventCallback;)V
    .locals 1

    .line 1391
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mZoomKeyEventCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1392
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mZoomKeyEventCallbacks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public resetMoreModeToNormal()V
    .locals 0

    .line 1918
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    if-eqz p0, :cond_0

    .line 1919
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->resetMoreModeToNormal()V

    :cond_0
    return-void
.end method

.method public resetShutterToIdle()V
    .locals 0

    .line 999
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->transitionToIdle()V

    return-void
.end method

.method public resetTwinkleGuide()V
    .locals 0

    .line 1063
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    if-eqz p0, :cond_0

    .line 1064
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/HintUIManager;->resetTwinkleGuide()V

    :cond_0
    return-void
.end method

.method protected resetUIRootParentLayout(Z)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 1363
    :goto_0
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUILayerRootParentList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1364
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUILayerRootParentList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-nez v2, :cond_0

    goto :goto_2

    .line 1369
    :cond_0
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz p1, :cond_1

    .line 1370
    iget-object v4, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v4}, Lcom/transsion/camera/app/ui/ScreenManager;->getColumnPreviewStartMargin()I

    move-result v4

    goto :goto_1

    :cond_1
    move v4, v0

    :goto_1
    invoke-virtual {v3, v4, v0, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 1371
    iget-object v4, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v4}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenWidth()I

    move-result v4

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1372
    iget-object v4, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v4}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenHeight()I

    move-result v4

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1373
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public restoreCurrentModeByFacing(I)V
    .locals 0

    .line 3823
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    if-eqz p0, :cond_0

    .line 3824
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->restoreCurrentModeByFacing(I)V

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    const/4 v0, 0x0

    .line 1668
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsPaused:Z

    .line 1669
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mAlreadyGotoAR:Z

    .line 1670
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->resumeRootLayout()V

    const/16 v0, 0x1f

    .line 1671
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->notifyRawActionToAppUI(I)V

    .line 1672
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->resume()V

    .line 1673
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    if-eqz v0, :cond_0

    .line 1674
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/HintUIManager;->resume()V

    .line 1676
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mToastUIManager:Lcom/transsion/camera/app/ui/manager/ToastUIManager;

    if-eqz v0, :cond_1

    .line 1677
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/ToastUIManager;->resume()V

    .line 1679
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    if-eqz v0, :cond_2

    .line 1680
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->resume()V

    .line 1682
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    if-eqz v0, :cond_3

    .line 1683
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->resume()V

    .line 1685
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    if-eqz v0, :cond_4

    .line 1686
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->resume()V

    .line 1688
    :cond_4
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    if-eqz v0, :cond_5

    .line 1689
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->resume()V

    .line 1691
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mFoldUIManager:Lcom/transsion/camera/app/common/manager/AbstractFoldUIManager;

    if-eqz v0, :cond_6

    .line 1692
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->resume()V

    .line 1694
    :cond_6
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mVIPCaptureManager:Lcom/transsion/camera/app/common/manager/AbstractFoldUIManager;

    if-eqz v0, :cond_7

    .line 1695
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->resume()V

    .line 1697
    :cond_7
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f050072

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x2

    .line 1698
    invoke-static {p0}, Lcom/transsion/camera/utils/aal/AalUtil;->setCurrentAALFunction(I)V

    :cond_8
    return-void
.end method

.method public setAeAfLock(Lcom/transsion/camera/app/common/mode/IAeAfLock;)V
    .locals 0

    .line 3848
    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mAeAfLock:Lcom/transsion/camera/app/common/mode/IAeAfLock;

    return-void
.end method

.method public setAuxPreviewLensSupport(ZLjava/lang/String;)V
    .locals 0

    .line 496
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->setAuxPreviewLensSupport(ZLjava/lang/String;)V

    return-void
.end method

.method public setAuxPreviewModeSupport(ZLjava/lang/String;)V
    .locals 0

    .line 3890
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    if-eqz p0, :cond_0

    .line 3891
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->setAuxPreviewModeSupport(ZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setAuxPreviewSize(II)V
    .locals 0

    .line 486
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->setAuxPreviewSize(II)V

    return-void
.end method

.method public setBackgroundPreviewModeSupport(Z)V
    .locals 0

    .line 3909
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    if-eqz p0, :cond_0

    .line 3910
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->setBackgroundPreviewModeSupport(Z)V

    :cond_0
    return-void
.end method

.method public setBackgroundPreviewSize(II)V
    .locals 0

    .line 491
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->setBackgroundPreviewSize(II)V

    return-void
.end method

.method public setBrowserGotoGalleryListener(Lcom/transsion/camera/app/common/IBrowserGotoGalleryListener;)V
    .locals 1

    .line 1740
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mFoldUIManager:Lcom/transsion/camera/app/common/manager/AbstractFoldUIManager;

    if-eqz v0, :cond_0

    .line 1741
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/manager/AbstractFoldUIManager;->setBrowserGotoGalleryListener(Lcom/transsion/camera/app/common/IBrowserGotoGalleryListener;)V

    .line 1743
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mVIPCaptureManager:Lcom/transsion/camera/app/common/manager/AbstractFoldUIManager;

    if-eqz p0, :cond_1

    .line 1744
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/manager/AbstractFoldUIManager;->setBrowserGotoGalleryListener(Lcom/transsion/camera/app/common/IBrowserGotoGalleryListener;)V

    :cond_1
    return-void
.end method

.method public setCameraReConnectListener(Lcom/transsion/camera/app/common/IAppUIListener$ICameraReConnectListener;)V
    .locals 0

    .line 911
    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCameraReConnectListener:Lcom/transsion/camera/app/common/IAppUIListener$ICameraReConnectListener;

    return-void
.end method

.method public setCameraSwitchListener(Lcom/transsion/camera/app/common/IAppUIListener$ICameraSwitchListener;)V
    .locals 0

    .line 876
    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCameraSwitchListener:Lcom/transsion/camera/app/common/IAppUIListener$ICameraSwitchListener;

    return-void
.end method

.method public setDragExitListener(Lcom/transsion/camera/app/common/IAppUIListener$IAODExitListener;)V
    .locals 0

    return-void
.end method

.method public setEnableHintUI(Z)V
    .locals 3

    .line 1205
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    if-eqz v0, :cond_0

    .line 1206
    sget-object v0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "If you turn on or off more mode,disabled hint ui or not,the value is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1207
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/HintUIManager;->setEnableHintUI(Z)V

    :cond_0
    return-void
.end method

.method public setGotoActivityListener(Lcom/transsion/camera/app/common/IAppUIListener$IGotoActivityListener;)V
    .locals 0

    .line 461
    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mGotoActivityListener:Lcom/transsion/camera/app/common/IAppUIListener$IGotoActivityListener;

    .line 462
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mVIPCaptureManager:Lcom/transsion/camera/app/common/manager/AbstractFoldUIManager;

    if-eqz p0, :cond_0

    .line 463
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/manager/AbstractFoldUIManager;->setGotoActivityListener(Lcom/transsion/camera/app/common/IAppUIListener$IGotoActivityListener;)V

    :cond_0
    return-void
.end method

.method public setHintListener(Lcom/transsion/camera/app/common/IAppUIListener$IHintListener;)V
    .locals 0

    return-void
.end method

.method public setHintUITrans(II)V
    .locals 0

    .line 1190
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    if-eqz p0, :cond_0

    .line 1191
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/manager/HintUIManager;->setHintUITrans(II)V

    :cond_0
    return-void
.end method

.method public setModeChangedListener(Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;)V
    .locals 0

    .line 575
    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModeChangeListener:Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;

    return-void
.end method

.method public setModeDataInfoListener(Lcom/transsion/camera/app/common/IAppUIListener$IModeDataInfoListener;)V
    .locals 0

    .line 1135
    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModeDataInfoListener:Lcom/transsion/camera/app/common/IAppUIListener$IModeDataInfoListener;

    return-void
.end method

.method public setModeFeatureSupport(Lcom/transsion/camera/app/common/mode/IModeFeatureSupport;)V
    .locals 0

    .line 871
    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModeFeatureSupport:Lcom/transsion/camera/app/common/mode/IModeFeatureSupport;

    return-void
.end method

.method public setModeList(Ljava/util/List;Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/FeatureResource;",
            ">;",
            "Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;",
            ")V"
        }
    .end annotation

    .line 565
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    if-eqz v0, :cond_0

    .line 566
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->isSecureCamera()Z

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->setModeList(Ljava/util/List;Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;Z)V

    .line 567
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModeOrderEditorManager:Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;

    if-eqz p0, :cond_0

    .line 568
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->setModeList(Ljava/util/List;Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;)V

    :cond_0
    return-void
.end method

.method public setModeNotifyCameraOperateActionCallBack(Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;)V
    .locals 0

    .line 3325
    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->modeNotifyCameraOperateActionCallback:Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;

    return-void
.end method

.method public setModeSwitchPolicy(Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;)V
    .locals 0

    .line 622
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mFoldUIManager:Lcom/transsion/camera/app/common/manager/AbstractFoldUIManager;

    if-eqz p0, :cond_0

    .line 623
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/manager/AbstractFoldUIManager;->setModeSwitchPolicy(Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;)V

    :cond_0
    return-void
.end method

.method public setModeUIControl(Lcom/transsion/camera/app/common/IAppUIControl$IModeUIControl;)V
    .locals 0

    .line 3213
    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModeUIControl:Lcom/transsion/camera/app/common/IAppUIControl$IModeUIControl;

    return-void
.end method

.method public setPreviewSize(II)V
    .locals 1

    .line 469
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->setPreviewSize(II)V

    .line 470
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    if-eqz v0, :cond_0

    .line 471
    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->setPreviewSize(II)V

    .line 473
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRingScreenLightUIManager:Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;

    if-eqz v0, :cond_1

    .line 474
    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->setPreviewSize(II)V

    .line 476
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    if-eqz v0, :cond_2

    .line 477
    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->setPreviewSize(II)V

    .line 479
    :cond_2
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mVIPCaptureManager:Lcom/transsion/camera/app/common/manager/AbstractFoldUIManager;

    if-eqz p0, :cond_3

    .line 480
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->setPreviewSize(II)V

    :cond_3
    return-void
.end method

.method public setSecureCamera(Z)V
    .locals 0

    .line 3163
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSecureCamera:Z

    .line 3164
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mGoogleLensUIManager:Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager;

    if-eqz p1, :cond_0

    .line 3165
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->isGoogleLensSupport()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager;->setGoogleLensSupport(Z)V

    :cond_0
    return-void
.end method

.method public setSettingManager(Lcom/transsion/camera/app/common/setting/ISettingManager;)V
    .locals 3

    .line 1757
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager;->getSettingController()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 1758
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p1

    .line 1759
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getSettingProvide()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    move-result-object v0

    .line 1760
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    if-eqz v1, :cond_0

    .line 1761
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->setSettingController(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    .line 1763
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHelpGuideUIManager:Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

    if-eqz v1, :cond_1

    .line 1764
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->setSettingController(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    .line 1766
    :cond_1
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    if-eqz v1, :cond_2

    .line 1767
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->setSettingController(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    .line 1769
    :cond_2
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingFragmentManager:Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;

    if-eqz v1, :cond_3

    .line 1770
    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->setSettingProvide(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;)V

    .line 1771
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingFragmentManager:Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;

    invoke-virtual {v1, p1}, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V

    .line 1773
    :cond_3
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mEditWaterMarkManager:Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;

    if-eqz v1, :cond_4

    .line 1774
    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->setSettingProvide(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;)V

    .line 1775
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mEditWaterMarkManager:Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V

    .line 1777
    :cond_4
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRemoteCaptureManager:Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;

    if-eqz v0, :cond_5

    .line 1778
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V

    .line 1780
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    if-eqz v0, :cond_6

    .line 1781
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->setSettingController(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    .line 1783
    :cond_6
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    if-eqz v0, :cond_7

    .line 1784
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->setSettingController(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    .line 1786
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mGoogleLensUIManager:Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager;

    if-eqz v0, :cond_8

    .line 1787
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager;->setSettingController(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    .line 1789
    :cond_8
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    if-eqz v0, :cond_9

    .line 1790
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->setSettingController(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    .line 1792
    :cond_9
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCameraSwitcherUIManager:Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;

    if-eqz v0, :cond_a

    .line 1793
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->setSettingController(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    .line 1795
    :cond_a
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    if-eqz v0, :cond_b

    .line 1796
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->setSettingController(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    .line 1798
    :cond_b
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mFoldUIManager:Lcom/transsion/camera/app/common/manager/AbstractFoldUIManager;

    if-eqz v0, :cond_c

    .line 1799
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->setSettingController(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    .line 1801
    :cond_c
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mVIPCaptureManager:Lcom/transsion/camera/app/common/manager/AbstractFoldUIManager;

    if-eqz v0, :cond_d

    .line 1802
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->setSettingController(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    :cond_d
    const-string v0, "key_start_self_timer"

    .line 1804
    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSelfTimerResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    const-string v0, "screen_form_state"

    .line 1805
    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenFormResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    const-string v0, "ring_screen_light_state"

    .line 1806
    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRingScreenLightResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    return-void
.end method

.method public setSettingStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V
    .locals 2

    .line 1817
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    if-eqz v0, :cond_0

    .line 1818
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->setSettingStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V

    .line 1820
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    if-eqz v0, :cond_1

    .line 1821
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->setSettingStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V

    .line 1823
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mEditWaterMarkManager:Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;

    if-eqz v0, :cond_2

    .line 1824
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->setSettingStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V

    .line 1825
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mEditWaterMarkManager:Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getLocationManager()Lcom/transsion/camera/app/common/location/LocationManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->setLocationManager(Lcom/transsion/camera/app/common/location/LocationManager;)V

    .line 1827
    :cond_2
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    if-eqz p0, :cond_3

    .line 1828
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->setSettingStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V

    :cond_3
    return-void
.end method

.method public setShutterTypeSelftimerOff(I)V
    .locals 0

    .line 958
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->setShutterTypeSelftimerOff(I)V

    return-void
.end method

.method public setShutterTypeSelftimerOn(I)V
    .locals 0

    .line 968
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->setShutterTypeSelftimerOn(I)V

    return-void
.end method

.method public setStartParameters(ZZZI)V
    .locals 0

    .line 1652
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mVideoIntent:Z

    .line 1653
    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPhotoIntent:Z

    const/4 p3, 0x0

    .line 1654
    iput-boolean p3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOpenOnly:Z

    .line 1655
    iput p4, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mDelayTime:I

    const/4 p4, 0x3

    new-array p4, p4, [Z

    .line 1656
    iput-object p4, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mVoiceParameters:[Z

    aput-boolean p1, p4, p3

    const/4 p0, 0x1

    aput-boolean p2, p4, p0

    const/4 p0, 0x2

    aput-boolean p3, p4, p0

    return-void
.end method

.method public setStorageSettingProvider(Lcom/transsion/camera/app/common/storage/AppStorageManager;)V
    .locals 0

    .line 1810
    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mAppStorageManager:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    .line 1811
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingFragmentManager:Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;

    if-eqz p0, :cond_0

    .line 1812
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->setStorageSettingProvider(Lcom/transsion/camera/app/common/storage/IStorage$IStorageSettingProvider;)V

    :cond_0
    return-void
.end method

.method public setSurfaceStatusListener(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;)V
    .locals 0

    .line 551
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->setSurfaceStatusListener(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;)V

    return-void
.end method

.method public setSwitchBlurCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchBlurCameraListener;)V
    .locals 0

    .line 896
    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSwitchBlurCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchBlurCameraListener;

    return-void
.end method

.method public setSwitchDualAndMainCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchDualAndMainCameraListener;)V
    .locals 0

    .line 921
    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSwitchDualAndMainCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchDualAndMainCameraListener;

    return-void
.end method

.method public setSwitchDualCamBWCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchDualCamBWCameraListener;)V
    .locals 0

    .line 901
    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSwitchDualCamBWListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchDualCamBWCameraListener;

    return-void
.end method

.method public setSwitchHighDefinitionCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchHighDefinitionCameraListener;)V
    .locals 0

    .line 916
    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSwitchHighDefinitionCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchHighDefinitionCameraListener;

    return-void
.end method

.method public setSwitchPeriscopeCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchPeriscopeCameraListener;)V
    .locals 0

    .line 891
    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSwitchPeriscopeCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchPeriscopeCameraListener;

    return-void
.end method

.method public setSwitchSatCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchSatCameraListener;)V
    .locals 0

    .line 906
    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSwitchSatCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchSatCameraListener;

    return-void
.end method

.method public setSwitchTeleCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchLogicalCameraListener;)V
    .locals 0

    .line 886
    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSwitchTeleCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchLogicalCameraListener;

    return-void
.end method

.method public setSwitchWideCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;)V
    .locals 0

    .line 881
    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSwitchWideCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;

    return-void
.end method

.method public setSystemUIViewListener(Lcom/transsion/camera/app/common/IAppUIListener$ISystemUIViewListener;)V
    .locals 0

    .line 618
    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSystemUIViewListener:Lcom/transsion/camera/app/common/IAppUIListener$ISystemUIViewListener;

    return-void
.end method

.method public setThumbnailListener(Lcom/transsion/camera/app/common/IAppUIListener$IThumbnailListener;)V
    .locals 2

    .line 600
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mThumbnailUIManager:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    if-eqz v0, :cond_0

    .line 601
    new-instance v1, Lcom/transsion/camera/app/ui/BaseAppUI$ThumbnailListenerWrap;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/app/ui/BaseAppUI$ThumbnailListenerWrap;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;Lcom/transsion/camera/app/common/IAppUIListener$IThumbnailListener;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->setThumbnailListener(Lcom/transsion/camera/app/common/IAppUIListener$IThumbnailListener;)V

    :cond_0
    return-void
.end method

.method public setVoiceInteraction(Z)V
    .locals 3

    .line 3178
    sget-object v0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "voiceInteraction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 3179
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mVoiceInteraction:Z

    .line 3180
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mGoogleLensUIManager:Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager;

    if-eqz p1, :cond_0

    .line 3181
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->isGoogleLensSupport()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager;->setGoogleLensSupport(Z)V

    :cond_0
    return-void
.end method

.method public setVolumeIntercept(Z)V
    .locals 0

    .line 3196
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIntercept:Z

    return-void
.end method

.method public shouldExitCameraOnBackPressed()Z
    .locals 0

    .line 2009
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 2012
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->shouldExitCameraOnBackPressed()Z

    move-result p0

    return p0
.end method

.method public showCSNotSupportHint(Lcom/transsion/camera/app/common/ui/HintInfo;Ljava/lang/String;Z)V
    .locals 2

    if-eqz p2, :cond_3

    .line 1140
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    if-nez v0, :cond_0

    goto :goto_1

    .line 1144
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1145
    iget-object p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    const p3, 0x7f1000e8

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    .line 1148
    iget-object p3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    const v0, 0x7f1002ce

    invoke-virtual {p3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {p3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 1150
    :cond_2
    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 1153
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/HintUIManager;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void

    .line 1141
    :cond_3
    :goto_1
    sget-object p0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "don\'t show hint when msg or mHintUIManager is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public showCustomPreviewCover(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 516
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIHandler:Lcom/transsion/camera/app/ui/BaseAppUI$UIHandler;

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 517
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIHandler:Lcom/transsion/camera/app/ui/BaseAppUI$UIHandler;

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public showFrontDualFlashUI()V
    .locals 2

    .line 1070
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 1071
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/manager/HintUIManager;->updateFrontDualFlashUIState(Z)V

    :cond_0
    const/16 v0, 0xaa

    .line 1073
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->notifyRawActionToAppUI(I)V

    return-void
.end method

.method public showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V
    .locals 0

    .line 1034
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    if-eqz p0, :cond_0

    .line 1035
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/HintUIManager;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_0
    return-void
.end method

.method public showLensDirtyHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V
    .locals 1

    .line 1085
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    if-eqz v0, :cond_0

    .line 1086
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/manager/HintUIManager;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 1089
    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOnceLensDirtyHint:Lcom/transsion/camera/app/common/ui/HintInfo;

    :cond_1
    :goto_0
    return-void
.end method

.method public showLowPowerHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V
    .locals 1

    .line 1096
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    if-eqz v0, :cond_0

    .line 1097
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/manager/HintUIManager;->showLowPowerHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 1100
    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOnceLowPowerHint:Lcom/transsion/camera/app/common/ui/HintInfo;

    :cond_1
    :goto_0
    return-void
.end method

.method public showOrHideHintLayout(Z)V
    .locals 0

    .line 1172
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintRootLayout:Landroid/view/ViewGroup;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 1174
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 1176
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public showOrHideModePickerRootUI(ZZ)V
    .locals 0

    .line 3677
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    if-eqz p0, :cond_0

    .line 3678
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->showOrHideModePickerRootUI(ZZ)V

    :cond_0
    return-void
.end method

.method public showOrHideMoreModeGuideRightView(Z)V
    .locals 0

    .line 3665
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    if-eqz p0, :cond_0

    .line 3666
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->showOrHideMoreModeGuideRightView(Z)V

    :cond_0
    return-void
.end method

.method public showOrHideShutterPanel(ZZIZ)V
    .locals 9

    .line 3592
    sget-object v0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[showOrHideShutterPanel] shouldShow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", withAnim: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", translation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", needModePickerChange = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 3594
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterPanelRootView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    .line 3597
    :cond_0
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterAnimatorFlag:Z

    .line 3598
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3599
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p2, :cond_5

    .line 3602
    iget-boolean p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterAnimatorFlag:Z

    if-eqz p2, :cond_3

    .line 3603
    iget-object p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterPanelRootView:Landroid/view/ViewGroup;

    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3604
    iget-object p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterPanelRootView:Landroid/view/ViewGroup;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 3605
    iget-object p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterPanelRootView:Landroid/view/ViewGroup;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 3606
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    if-eqz p1, :cond_2

    if-eqz p4, :cond_2

    .line 3607
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->showModeRegion()V

    .line 3608
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->setModeOpaque()V

    .line 3610
    :cond_2
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterAnimatorFlag:Z

    goto/16 :goto_2

    .line 3612
    :cond_3
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterPanelRootView:Landroid/view/ViewGroup;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3613
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterPanelRootView:Landroid/view/ViewGroup;

    int-to-float p2, p3

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 3614
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterPanelRootView:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 3615
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    if-eqz p1, :cond_4

    if-eqz p4, :cond_4

    .line 3616
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->hideModeRegion()V

    .line 3617
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->setModeUnOpaque()V

    .line 3619
    :cond_4
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterAnimatorFlag:Z

    goto/16 :goto_2

    .line 3622
    :cond_5
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterAnimatorSet:Landroid/animation/AnimatorSet;

    .line 3625
    new-instance p2, Landroid/animation/ObjectAnimator;

    invoke-direct {p2}, Landroid/animation/ObjectAnimator;-><init>()V

    .line 3626
    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterAnimatorFlag:Z

    const/16 v4, 0x12c

    const-string v5, "translationY"

    const-string v6, "alpha"

    const-wide/16 v7, 0x12c

    if-eqz v3, :cond_7

    .line 3627
    iget-object p3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterPanelRootView:Landroid/view/ViewGroup;

    invoke-virtual {p3, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3628
    iget-object p3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    if-eqz p3, :cond_6

    .line 3629
    invoke-virtual {p3, v4}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->modePickerShowAlphaAnimator(I)Landroid/animation/ObjectAnimator;

    move-result-object p2

    .line 3631
    :cond_6
    iget-object p3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterPanelRootView:Landroid/view/ViewGroup;

    new-array v3, v1, [F

    aput p1, v3, v2

    invoke-static {p3, v6, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 3633
    invoke-virtual {p1, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 3634
    iget-object p3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterPanelRootView:Landroid/view/ViewGroup;

    new-array v3, v1, [F

    aput v0, v3, v2

    invoke-static {p3, v5, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    .line 3636
    invoke-virtual {p3, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p3

    .line 3637
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterAnimatorFlag:Z

    goto :goto_0

    .line 3639
    :cond_7
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getAlpha()F

    move-result p1

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_8

    .line 3640
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    if-eqz p1, :cond_8

    .line 3641
    invoke-virtual {p1, v4}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->modePickerHideAlphaAnimator(I)Landroid/animation/ObjectAnimator;

    move-result-object p2

    .line 3644
    :cond_8
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterPanelRootView:Landroid/view/ViewGroup;

    new-array v3, v1, [F

    aput v0, v3, v2

    invoke-static {p1, v6, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 3646
    invoke-virtual {p1, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 3647
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterPanelRootView:Landroid/view/ViewGroup;

    new-array v3, v1, [F

    int-to-float p3, p3

    aput p3, v3, v2

    invoke-static {v0, v5, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    .line 3649
    invoke-virtual {p3, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p3

    .line 3650
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterAnimatorFlag:Z

    .line 3652
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v0, 0x2

    if-eqz p4, :cond_9

    .line 3654
    iget-object p4, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v3, 0x3

    new-array v3, v3, [Landroid/animation/Animator;

    aput-object p1, v3, v2

    aput-object p3, v3, v1

    aput-object p2, v3, v0

    invoke-virtual {p4, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_1

    .line 3656
    :cond_9
    iget-object p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterAnimatorSet:Landroid/animation/AnimatorSet;

    new-array p4, v0, [Landroid/animation/Animator;

    aput-object p1, p4, v2

    aput-object p3, p4, v1

    invoke-virtual {p2, p4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 3658
    :goto_1
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 3660
    :goto_2
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterAnimatorFlag:Z

    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHideShutter:Z

    return-void
.end method

.method public showOrHideSwitcher(Z)V
    .locals 2

    .line 3879
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCameraSwitcherUIManager:Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    xor-int/lit8 v1, p1, 0x1

    .line 3882
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShouldHideSwitcher:Z

    .line 3883
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->showOrHide(Z)V

    return-void
.end method

.method protected showOrHideSystemUI()V
    .locals 3

    .line 3953
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSystemUIViewListener:Lcom/transsion/camera/app/common/IAppUIListener$ISystemUIViewListener;

    if-nez v0, :cond_0

    return-void

    .line 3957
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIHandler:Lcom/transsion/camera/app/ui/BaseAppUI$UIHandler;

    const/16 v1, 0x72

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3958
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 3959
    iget v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOrientation:I

    if-eqz v0, :cond_3

    const/16 v2, 0xb4

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0x5a

    if-eq v0, v1, :cond_2

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_6

    .line 3962
    :cond_2
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->resetSystemUI()V

    goto :goto_1

    .line 3960
    :cond_3
    :goto_0
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/BaseAppUI;->onShowOrHideSystemUIView(Z)V

    goto :goto_1

    .line 3964
    :cond_4
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    .line 3965
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_6

    .line 3966
    :cond_5
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/BaseAppUI;->onShowOrHideSystemUIView(Z)V

    :cond_6
    :goto_1
    return-void
.end method

.method public showOrHideTopAndBottomView(Z)V
    .locals 2

    .line 3922
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterPanelRootView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mBottomBarRootView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    if-eqz v1, :cond_1

    if-nez p1, :cond_0

    .line 3925
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->hide()V

    .line 3926
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mBottomBarRootView:Landroid/view/View;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 3928
    :cond_0
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->show()V

    .line 3929
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mBottomBarRootView:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public showToast(Lcom/transsion/camera/app/common/ui/HintInfo;)V
    .locals 0

    .line 1107
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mToastUIManager:Lcom/transsion/camera/app/ui/manager/ToastUIManager;

    if-eqz p0, :cond_0

    .line 1108
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/ToastUIManager;->showToast(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_0
    return-void
.end method

.method public showWideCamera()V
    .locals 0

    .line 3742
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    if-eqz p0, :cond_0

    .line 3743
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->showWideCamera()V

    :cond_0
    return-void
.end method

.method public sinkUI(ZIZ)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    .line 3486
    sget-object v3, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[showOrHideModePicker] sink:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", mUISinkModeChange:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUISinkModeChange:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " , diffShutter:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, p2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " , anim:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 3489
    iput-boolean v1, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsModePickerSink:Z

    .line 3491
    iget-object v3, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSinkAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3492
    iget-object v3, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSinkAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    xor-int/lit8 v3, v1, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    .line 3496
    iget-object v6, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0706c9

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    goto :goto_0

    :cond_1
    move v6, v4

    .line 3497
    :goto_0
    iget-object v7, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0085

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    move v5, v4

    .line 3499
    :goto_1
    iget-boolean v8, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUISinkModeChange:Z

    if-eqz v8, :cond_3

    if-nez v1, :cond_3

    move v7, v4

    :cond_3
    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    move v7, v4

    :goto_2
    if-eqz v2, :cond_5

    const/16 v8, 0x12c

    goto :goto_3

    :cond_5
    move v8, v4

    .line 3502
    :goto_3
    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v9, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSinkAnimatorSet:Landroid/animation/AnimatorSet;

    .line 3503
    iget-object v9, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterPanelRootView:Landroid/view/ViewGroup;

    const/4 v10, 0x1

    new-array v11, v10, [F

    int-to-float v12, v5

    aput v12, v11, v4

    const-string v12, "translationY"

    invoke-static {v9, v12, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    int-to-long v13, v8

    .line 3504
    invoke-virtual {v9, v13, v14}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 3505
    iget-object v9, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSinkAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v11, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v9, v11}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3506
    iget-object v9, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerLayout:Landroid/view/View;

    if-eqz v9, :cond_b

    .line 3507
    iget-object v9, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePikerArrowRoot:Landroid/view/View;

    new-array v11, v10, [F

    int-to-float v3, v3

    aput v3, v11, v4

    const-string v13, "alpha"

    .line 3508
    invoke-static {v9, v13, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    int-to-long v14, v7

    invoke-virtual {v9, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 3509
    iget-object v9, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mMoreModeGuideRightRoot:Landroid/view/View;

    new-array v11, v10, [F

    aput v3, v11, v4

    .line 3510
    invoke-static {v9, v13, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    invoke-virtual {v9, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 3511
    iget-object v11, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mMoreModeGuideRightRoot:Landroid/view/View;

    move/from16 p2, v5

    new-array v5, v10, [F

    int-to-float v6, v6

    aput v6, v5, v4

    .line 3512
    invoke-static {v11, v12, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v5, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 3513
    iget-object v11, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerLayout:Landroid/view/View;

    new-array v2, v10, [F

    aput v3, v2, v4

    .line 3514
    invoke-static {v11, v13, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 3515
    iget-object v3, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerLayout:Landroid/view/View;

    new-array v11, v10, [F

    aput v6, v11, v4

    .line 3516
    invoke-static {v3, v12, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v3, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 3517
    iget-object v6, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSinkAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v11, 0x6

    new-array v11, v11, [Landroid/animation/Animator;

    aput-object v2, v11, v4

    aput-object v3, v11, v10

    const/4 v3, 0x2

    aput-object v8, v11, v3

    const/4 v3, 0x3

    aput-object v7, v11, v3

    const/4 v3, 0x4

    aput-object v9, v11, v3

    const/4 v3, 0x5

    aput-object v5, v11, v3

    invoke-virtual {v6, v11}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    if-eqz v1, :cond_9

    move/from16 v3, p3

    if-eqz v3, :cond_8

    .line 3521
    iget-object v2, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    if-eqz v2, :cond_6

    .line 3522
    invoke-virtual {v2, v4}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->setEnable(Z)V

    .line 3524
    :cond_6
    iget-object v2, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCameraSwitcherUIManager:Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;

    if-eqz v2, :cond_7

    .line 3525
    invoke-virtual {v2, v4}, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->setEnable(Z)V

    .line 3527
    :cond_7
    iget-object v2, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSinkAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v5, Lcom/transsion/camera/app/ui/BaseAppUI$4;

    invoke-direct {v5, v0}, Lcom/transsion/camera/app/ui/BaseAppUI$4;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;)V

    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_4

    .line 3551
    :cond_8
    iget-object v2, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerLayout:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 3552
    iget-object v2, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    if-eqz v2, :cond_c

    .line 3553
    invoke-virtual {v2, v5}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->updateGuideRightRootVisibleState(I)V

    goto :goto_4

    :cond_9
    move/from16 v3, p3

    if-eqz v3, :cond_a

    .line 3558
    iget-object v5, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSinkAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v6, 0x64

    invoke-virtual {v5, v6, v7}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 3559
    iget-object v5, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mAlphaPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v2, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3560
    iget-object v2, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSinkAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v5, Lcom/transsion/camera/app/ui/BaseAppUI$5;

    invoke-direct {v5, v0}, Lcom/transsion/camera/app/ui/BaseAppUI$5;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;)V

    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_4

    .line 3570
    :cond_a
    iget-object v2, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerLayout:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 3571
    iget-object v2, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    if-eqz v2, :cond_c

    .line 3572
    invoke-virtual {v2, v4}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->updateGuideRightRootVisibleState(I)V

    goto :goto_4

    :cond_b
    move v3, v2

    move/from16 p2, v5

    .line 3577
    iget-object v2, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSinkAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v5, v10, [Landroid/animation/Animator;

    aput-object v8, v5, v4

    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 3580
    :cond_c
    :goto_4
    iget-object v2, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSinkAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 3582
    iget-object v2, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mThumbnailUIManager:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    if-eqz v2, :cond_d

    move/from16 v5, p2

    .line 3583
    invoke-virtual {v2, v1, v5, v3}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->sinkShareUI(ZIZ)V

    .line 3586
    :cond_d
    iput-boolean v4, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUISinkModeChange:Z

    return-void
.end method

.method public start()V
    .locals 0

    .line 1566
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mGoogleLensUIManager:Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager;

    if-eqz p0, :cond_0

    .line 1567
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager;->start()V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .line 1631
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    if-eqz v0, :cond_0

    .line 1632
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->onBackPressed()Z

    .line 1634
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mArActivityCoverLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    .line 1635
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1636
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mArActivityCoverLayout:Landroid/widget/FrameLayout;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public switchCamera()V
    .locals 1

    .line 3074
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCameraSwitchListener:Lcom/transsion/camera/app/common/IAppUIListener$ICameraSwitchListener;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 3075
    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIListener$ICameraSwitchListener;->onCameraSwitch(Z)V

    :cond_0
    return-void
.end method

.method public switchSatCamera(Ljava/lang/String;)V
    .locals 0

    .line 3838
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSwitchSatCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchSatCameraListener;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$ISwitchSatCameraListener;->onSwitchSatCameraListener(Ljava/lang/String;)V

    return-void
.end method

.method public switchSatCamera(Ljava/lang/String;Z)V
    .locals 0

    .line 3843
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSwitchSatCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchSatCameraListener;

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/common/IAppUIListener$ISwitchSatCameraListener;->onSwitchSatCameraListener(Ljava/lang/String;Z)V

    return-void
.end method

.method public transitionShutterToRegular()V
    .locals 0

    .line 994
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->transitionToRegular()V

    return-void
.end method

.method public transitionShutterToSmall()V
    .locals 0

    .line 989
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->transitionToSmall()V

    return-void
.end method

.method public translateWideCamera(IZ)V
    .locals 0

    .line 3763
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    if-eqz p0, :cond_0

    .line 3764
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->translateWideCamera(IZ)V

    :cond_0
    return-void
.end method

.method public translateWideCamera(Z)V
    .locals 0

    .line 3756
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    if-eqz p0, :cond_0

    .line 3757
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->translateWideCamera(Z)V

    :cond_0
    return-void
.end method

.method public triggerShutterClick(I)V
    .locals 0

    .line 1386
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->triggerShutterClick(I)V

    return-void
.end method

.method public unInit()V
    .locals 3

    .line 1488
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIHandler:Lcom/transsion/camera/app/ui/BaseAppUI$UIHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1489
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    if-eqz v0, :cond_0

    .line 1490
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->setShutterHook(Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;)V

    .line 1492
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    if-eqz v0, :cond_1

    .line 1493
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->setItemSelectHook(Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI$ItemSelectHook;)V

    .line 1494
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->setSettingFragmentListener(Lcom/transsion/camera/app/common/IAppUIListener$IFragmentListener;)V

    .line 1495
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->setSwitchWideCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;)V

    .line 1496
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->setSwitchBlurCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchBlurCameraListener;)V

    .line 1497
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->setSwitchDualCamBWCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchDualCamBWCameraListener;)V

    .line 1499
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    if-eqz v0, :cond_2

    .line 1500
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->setSwitchWideCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;)V

    .line 1502
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    if-eqz v0, :cond_3

    .line 1503
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->setModePickerListener(Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;)V

    .line 1504
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->unregisterPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    .line 1506
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCameraSwitcherUIManager:Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;

    if-eqz v0, :cond_4

    .line 1507
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->setCameraSwitchListener(Lcom/transsion/camera/app/common/IAppUIListener$ICameraSwitchListener;)V

    .line 1509
    :cond_4
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mThumbnailUIManager:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    if-eqz v0, :cond_5

    .line 1510
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->setThumbnailListener(Lcom/transsion/camera/app/common/IAppUIListener$IThumbnailListener;)V

    .line 1512
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1513
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewGestureManager:Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;->unregisterGestureListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;)V

    .line 1514
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    if-eqz v0, :cond_6

    .line 1515
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->unregisterPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    .line 1516
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewGestureManager:Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;->unregisterGestureListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;)V

    .line 1518
    :cond_6
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHelpGuideUIManager:Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

    if-eqz v0, :cond_7

    .line 1519
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->unregisterPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    .line 1521
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    if-eqz v0, :cond_8

    .line 1522
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewGestureManager:Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;

    invoke-virtual {v2, v0}, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;->unregisterGestureListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;)V

    .line 1524
    :cond_8
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    if-eqz v0, :cond_9

    .line 1525
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->setSwitchWideCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;)V

    .line 1526
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->setSwitchDualAndMainCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchDualAndMainCameraListener;)V

    .line 1527
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->unregisterPreviewGestureListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;)V

    .line 1528
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->unregisterPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    .line 1530
    :cond_9
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    if-eqz v0, :cond_a

    .line 1531
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->unregisterPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    .line 1533
    :cond_a
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRingScreenLightUIManager:Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;

    if-eqz v0, :cond_b

    .line 1534
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->unregisterPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    .line 1536
    :cond_b
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingFragmentManager:Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;

    if-eqz v0, :cond_c

    .line 1537
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->setStateListener(Lcom/transsion/camera/app/common/IAppUIListener$IFragmentStateListener;)V

    .line 1538
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingFragmentManager:Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->unInit()V

    .line 1540
    :cond_c
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIManagers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/common/manager/AbstractViewManager;

    if-eqz v2, :cond_d

    .line 1542
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->unInit()V

    goto :goto_0

    .line 1545
    :cond_e
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mThermalThrottleUIManager:Lcom/transsion/camera/app/ui/manager/ThermalThrottleUIManager;

    if-eqz v0, :cond_f

    .line 1546
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/ThermalThrottleUIManager;->unInit()V

    .line 1548
    :cond_f
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIManagers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1549
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUILayerRootParentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1550
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mVIPCaptureManager:Lcom/transsion/camera/app/common/manager/AbstractFoldUIManager;

    if-eqz v0, :cond_10

    .line 1551
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->unregisterPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    .line 1553
    :cond_10
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewGestureScrollAdapter:Lcom/transsion/camera/app/ui/PreviewGestureScrollAdapter;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->unregisterPreviewGestureListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;)V

    .line 1554
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenFormTypeListeners:Ljava/util/List;

    monitor-enter v0

    .line 1555
    :try_start_0
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenFormTypeListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1556
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1557
    iput-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    .line 1558
    iput-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContinuousShotUIManager:Lcom/transsion/camera/app/ui/manager/ContinuousShotUIManager;

    const/4 v0, 0x0

    .line 1559
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mFrameOnceCome:Z

    .line 1560
    iput-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingUIProvider:Lcom/transsion/camera/app/common/provider/SettingUIProvider;

    .line 1561
    iput-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSpecifyModePolicy:Lcom/transsion/camera/app/SpecifyModePolicy;

    .line 1562
    iput-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mToastUIManager:Lcom/transsion/camera/app/ui/manager/ToastUIManager;

    return-void

    :catchall_0
    move-exception p0

    .line 1556
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public unRegisterHintStateListener()V
    .locals 0

    .line 1048
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    if-eqz p0, :cond_0

    .line 1049
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/HintUIManager;->unRegisterHintStateListener()V

    :cond_0
    return-void
.end method

.method public unRegisterShutterListener(Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;)V
    .locals 0

    .line 866
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->unRegisterOnShutterListener(Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;)V

    return-void
.end method

.method public unregisterPreviewGestureListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;)V
    .locals 0

    .line 585
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewGestureManager:Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;->unregisterGestureListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;)V

    return-void
.end method

.method public unregisterPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V
    .locals 0

    .line 595
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->unregisterPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    return-void
.end method

.method public unregisterScreenFormListener(Lcom/transsion/camera/app/common/IScreenFormControl;)V
    .locals 2

    .line 1293
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenFormTypeListeners:Ljava/util/List;

    monitor-enter v0

    .line 1294
    :try_start_0
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenFormTypeListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1295
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenFormTypeListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1297
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public unregisterZoomKeyEventCallback(Lcom/transsion/camera/app/common/IAppUIControl$IZoomKeyEventCallback;)V
    .locals 0

    .line 1398
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mZoomKeyEventCallbacks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method protected updateBottomBarLayout(IIZ)V
    .locals 8

    .line 3329
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mBottomBarHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    .line 3330
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3331
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/app/ui/BaseAppUI;->updateBottomBarLayoutForOnlyHover(IIZ)V

    return-void

    .line 3335
    :cond_0
    iget-object p3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mBottomBarRootView:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, 0x0

    .line 3336
    invoke-virtual {p3, v0, v0, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    const/4 v1, 0x1

    if-ne p2, v1, :cond_4

    const/16 p2, 0x5a

    const v2, 0x7f0700cc

    const v3, 0x7f0700cd

    const v4, 0x7f0700cf

    const v5, 0x7f0700ce

    if-eq p1, p2, :cond_3

    const/16 p2, 0xb4

    const v6, 0x7f0700ca

    const v7, 0x7f0700cb

    if-eq p1, p2, :cond_2

    const/16 p2, 0x10e

    if-eq p1, p2, :cond_1

    .line 3363
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 3364
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/16 p1, 0x35

    .line 3365
    iput p1, p3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 3366
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 3367
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto/16 :goto_0

    .line 3354
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 3355
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 p1, 0x55

    .line 3356
    iput p1, p3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 3357
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 3358
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_0

    .line 3347
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 3348
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/16 p1, 0x53

    .line 3349
    iput p1, p3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 3350
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 3351
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    .line 3340
    :cond_3
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 3341
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 p1, 0x33

    .line 3342
    iput p1, p3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 3343
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 3344
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_0

    :cond_4
    if-eqz p2, :cond_5

    const/4 p1, 0x2

    if-ne p2, p1, :cond_6

    :cond_5
    const/4 p1, -0x1

    .line 3372
    iput p1, p3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 3373
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->getBottomBarHeight()I

    move-result p1

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->getNavigationBarHeight()I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, p3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 3374
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->getNavigationBarHeight()I

    move-result p1

    iput p1, p3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    const/16 p1, 0x51

    .line 3375
    iput p1, p3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 3377
    :cond_6
    :goto_0
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mBottomBarRootView:Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3378
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->updateShutterPanelRootLayout()V

    new-array p1, v1, [Landroid/view/View;

    .line 3379
    iget-object p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerRootView:Landroid/view/ViewGroup;

    aput-object p2, p1, v0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/BaseAppUI;->updateNavigationBarHeight([Landroid/view/View;)V

    return-void
.end method

.method protected updateBottomBarLayoutForOnlyHover(IIZ)V
    .locals 10

    .line 3428
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mBottomBarRootView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 3429
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 3430
    iget v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-ne p2, v3, :cond_1

    .line 3439
    iget-object p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/ScreenManager;->getBottomHeight()I

    move-result p2

    move v6, v5

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_3

    if-ne p2, v4, :cond_2

    goto :goto_0

    :cond_2
    move v6, v0

    move p2, v1

    goto :goto_1

    .line 3443
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->getNavigationBarHeight()I

    move-result p2

    .line 3444
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->getBottomBarHeight()I

    move-result v6

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->getNavigationBarHeight()I

    move-result v7

    sub-int/2addr v6, v7

    move v9, v6

    move v6, p2

    move p2, v9

    .line 3446
    :goto_1
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/ui/BaseAppUI;->calculateShutterPanelPaddingHeight(I)I

    move-result v7

    if-ltz v7, :cond_4

    move v8, v2

    goto :goto_2

    :cond_4
    move v8, v5

    :goto_2
    if-eqz p3, :cond_7

    if-ne v0, v6, :cond_5

    if-eq v1, p2, :cond_7

    :cond_5
    new-array p3, v4, [I

    aput v1, p3, v5

    aput p2, p3, v2

    const-string p2, "height"

    .line 3449
    invoke-static {p2, p3}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object p2

    new-array p3, v4, [I

    aput v0, p3, v5

    aput v6, p3, v2

    const-string v0, "margin"

    .line 3450
    invoke-static {v0, p3}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object p3

    new-array v0, v4, [I

    if-eqz v8, :cond_6

    .line 3451
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterPanelRootView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v1

    goto :goto_3

    .line 3452
    :cond_6
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterPanelRootView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    :goto_3
    aput v1, v0, v5

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v1

    aput v1, v0, v2

    const-string v1, "padding"

    .line 3451
    invoke-static {v1, v0}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    new-array v1, v3, [Landroid/animation/PropertyValuesHolder;

    aput-object p2, v1, v5

    aput-object p3, v1, v2

    aput-object v0, v1, v4

    .line 3453
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mBottomBarHoverAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x190

    .line 3454
    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3455
    iget-object p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mBottomBarHoverAnimator:Landroid/animation/ValueAnimator;

    iget-object p3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3456
    iget-object p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mBottomBarHoverAnimator:Landroid/animation/ValueAnimator;

    new-instance p3, Lcom/transsion/camera/app/ui/BaseAppUI$$ExternalSyntheticLambda6;

    invoke-direct {p3, p0, v8, p1}, Lcom/transsion/camera/app/ui/BaseAppUI$$ExternalSyntheticLambda6;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;ZLandroid/view/ViewGroup$MarginLayoutParams;)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3466
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mBottomBarHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_5

    :cond_7
    if-eqz v8, :cond_8

    .line 3469
    iget-object p3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterPanelRootView:Landroid/view/ViewGroup;

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-virtual {p3, v5, v5, v5, v0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_4

    .line 3471
    :cond_8
    iget-object p3, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterPanelRootView:Landroid/view/ViewGroup;

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-virtual {p3, v5, v0, v5, v5}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 3473
    :goto_4
    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 3474
    iput v6, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 3475
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mBottomBarRootView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_5
    return-void
.end method

.method public updateBrowserData(Landroid/net/Uri;)V
    .locals 0

    .line 677
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mFoldUIManager:Lcom/transsion/camera/app/common/manager/AbstractFoldUIManager;

    if-eqz p0, :cond_0

    .line 678
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/manager/AbstractFoldUIManager;->notifyNewMedia(Landroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method public updateBurstBrowserData(Landroid/net/Uri;Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 685
    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mBrowserLastBurstUri:Landroid/net/Uri;

    :cond_0
    if-eqz p2, :cond_1

    .line 687
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mBrowserLastBurstUri:Landroid/net/Uri;

    if-eqz p1, :cond_1

    .line 688
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/BaseAppUI;->updateBrowserData(Landroid/net/Uri;)V

    const/4 p1, 0x0

    .line 689
    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mBrowserLastBurstUri:Landroid/net/Uri;

    :cond_1
    return-void
.end method

.method public updateCameraState(I)V
    .locals 3

    .line 926
    sget-object v0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateCameraState] state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/transsion/camera/app/common/CameraState;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 928
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIHandler:Lcom/transsion/camera/app/ui/BaseAppUI$UIHandler;

    const/16 v0, 0x67

    invoke-virtual {p0, v0, p1, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public updateCurrentCamera(Ljava/lang/String;Z)V
    .locals 1

    .line 799
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModeOrderEditorManager:Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;

    if-eqz v0, :cond_0

    .line 800
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->updateCurrentCamera(Ljava/lang/String;)V

    .line 802
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    if-eqz v0, :cond_1

    .line 803
    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->updateCurrentCamera(Ljava/lang/String;Z)V

    .line 805
    :cond_1
    iget-object p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    if-eqz p2, :cond_2

    .line 806
    invoke-virtual {p2, p1}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->updateCurrentCamera(Ljava/lang/String;)V

    .line 808
    :cond_2
    iget-object p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRingScreenLightUIManager:Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;

    if-eqz p2, :cond_3

    .line 809
    invoke-virtual {p2, p1}, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->updateCurrentCamera(Ljava/lang/String;)V

    .line 811
    :cond_3
    iget-object p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mFoldUIManager:Lcom/transsion/camera/app/common/manager/AbstractFoldUIManager;

    if-eqz p2, :cond_4

    .line 812
    invoke-virtual {p2, p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->updateCurrentCamera(Ljava/lang/String;)V

    .line 814
    :cond_4
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mVIPCaptureManager:Lcom/transsion/camera/app/common/manager/AbstractFoldUIManager;

    if-eqz p0, :cond_5

    .line 815
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->updateCurrentCamera(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public updateCurrentModes(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/FeatureResource;",
            ">;)V"
        }
    .end annotation

    .line 821
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    if-eqz p0, :cond_0

    .line 822
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->updateCurrentModes(Ljava/util/List;)V

    :cond_0
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

    .line 3794
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    if-eqz p0, :cond_0

    .line 3795
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->updateCurrentModes(Ljava/util/List;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public updateCustomState(Ljava/lang/String;)V
    .locals 1

    .line 1015
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "VALUE_edit_watermark_state_done"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "VALUE_edit_watermark_state_writing"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1017
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIHandler:Lcom/transsion/camera/app/ui/BaseAppUI$UIHandler;

    new-instance v0, Lcom/transsion/camera/app/ui/BaseAppUI$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/BaseAppUI$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1020
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIHandler:Lcom/transsion/camera/app/ui/BaseAppUI$UIHandler;

    new-instance v0, Lcom/transsion/camera/app/ui/BaseAppUI$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/BaseAppUI$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public updateItemValue()V
    .locals 0

    .line 3770
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    if-eqz p0, :cond_0

    .line 3771
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->updateItemValue()V

    :cond_0
    return-void
.end method

.method public updateModeSettingUISpec(Lcom/transsion/camera/app/common/ModeSettingUISpec;Z)V
    .locals 3

    .line 753
    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    .line 754
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 755
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p2, v1}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->updateCurrentMode(Ljava/lang/String;ZZ)V

    .line 757
    :cond_0
    iget-object p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mFoldUIManager:Lcom/transsion/camera/app/common/manager/AbstractFoldUIManager;

    if-eqz p2, :cond_1

    .line 758
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/transsion/camera/app/common/manager/AbstractFoldUIManager;->updateCurrentMode(Ljava/lang/String;)V

    .line 760
    :cond_1
    iget-object p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mVIPCaptureManager:Lcom/transsion/camera/app/common/manager/AbstractFoldUIManager;

    if-eqz p2, :cond_2

    .line 761
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/transsion/camera/app/common/manager/AbstractFoldUIManager;->updateCurrentMode(Ljava/lang/String;)V

    .line 765
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getTopBarSettingUIEntries()[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 766
    array-length p1, p1

    if-nez p1, :cond_4

    .line 767
    :cond_3
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    if-eqz p1, :cond_4

    .line 768
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->hide()V

    .line 772
    :cond_4
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getModeGuideLayoutsArrayId()I

    move-result p1

    .line 773
    iget-object p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {p2}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getSettingGuideLayoutsArrayId()I

    move-result p2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_5

    .line 776
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    goto :goto_0

    :cond_5
    move v2, v1

    :goto_0
    if-eq p2, v0, :cond_6

    .line 780
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    :cond_6
    if-eq p1, v0, :cond_7

    if-nez v2, :cond_9

    :cond_7
    if-eq p2, v0, :cond_8

    if-nez v1, :cond_9

    .line 783
    :cond_8
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHelpGuideUIManager:Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

    if-eqz p0, :cond_9

    .line 784
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->hide()V

    :cond_9
    return-void
.end method

.method public updateMoreEditMode(Z)V
    .locals 0

    .line 1911
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    if-eqz p0, :cond_0

    .line 1912
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->updateMoreEditMode(Z)V

    :cond_0
    return-void
.end method

.method protected final varargs updateNavigationBarHeight([Landroid/view/View;)V
    .locals 4

    .line 2034
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->getNavigationBarHeight()I

    move-result p0

    .line 2035
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    .line 2036
    invoke-virtual {v3, v1, v1, v1, p0}, Landroid/view/View;->setPadding(IIII)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected updateOverlayManagerSettingUIList()V
    .locals 3

    .line 2463
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03002d

    .line 2464
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 2465
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getModeSettingUIEntries()[Ljava/lang/String;

    move-result-object v1

    .line 2466
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingUIProvider:Lcom/transsion/camera/app/common/provider/SettingUIProvider;

    .line 2467
    invoke-virtual {v2, v1}, Lcom/transsion/camera/app/common/provider/SettingUIProvider;->getCommonSettingUIList([Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 2468
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingUIProvider:Lcom/transsion/camera/app/common/provider/SettingUIProvider;

    .line 2469
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/provider/SettingUIProvider;->getCommonSettingUIList([Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 2468
    invoke-virtual {v2, p0, v1}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->setSettingUIList(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public updateProcessingThumbUri(Landroid/net/Uri;Z)V
    .locals 1

    .line 695
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mThumbnailUIManager:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    if-eqz v0, :cond_0

    .line 696
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->updateProcessingThumbUri(Landroid/net/Uri;)V

    :cond_0
    if-eqz p2, :cond_1

    const/16 p1, 0x57

    .line 700
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/BaseAppUI;->notifyRawActionToAppUI(I)V

    :cond_1
    return-void
.end method

.method public updateRingScreenLightState()V
    .locals 2

    .line 4074
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRingScreenLightResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    const-string v1, "ring_screen_light_state"

    .line 4075
    invoke-virtual {p0, v1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected updateRootLayoutDisplaySize()V
    .locals 1

    .line 1352
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    instance-of v0, v0, Lcom/transsion/camera/app/ui/widget/RootLayout;

    if-nez v0, :cond_0

    return-void

    .line 1355
    :cond_0
    invoke-static {}, Lcom/transsion/camera/utils/ScreenUtils;->getMainScreenSize()Landroid/util/Size;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 1359
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    check-cast p0, Lcom/transsion/camera/app/ui/widget/RootLayout;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/widget/RootLayout;->updateDisplaySize(Landroid/util/Size;)V

    return-void
.end method

.method public updateShutterType(I)V
    .locals 2

    .line 933
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 934
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->doUpdateShutterType(IZ)V

    goto :goto_0

    .line 936
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIHandler:Lcom/transsion/camera/app/ui/BaseAppUI$UIHandler;

    const/16 v1, 0x6d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 937
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIHandler:Lcom/transsion/camera/app/ui/BaseAppUI$UIHandler;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v1, p1, p1, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void
.end method

.method public updateShutterType(IZ)V
    .locals 2

    .line 943
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 944
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/BaseAppUI;->doUpdateShutterType(IZ)V

    goto :goto_0

    .line 946
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIHandler:Lcom/transsion/camera/app/ui/BaseAppUI$UIHandler;

    const/16 v1, 0x6d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 947
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIHandler:Lcom/transsion/camera/app/ui/BaseAppUI$UIHandler;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, v1, p1, p1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void
.end method

.method public updateSpecifiedMode(Ljava/lang/String;Z)V
    .locals 3

    .line 1378
    sget-object v0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSpecifiedMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1379
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 1380
    invoke-virtual {p0, p1, v0, p2}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->updateCurrentMode(Ljava/lang/String;ZZ)V

    :cond_0
    return-void
.end method

.method public updateSwitchCameraUI(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 3713
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    if-eqz p0, :cond_0

    .line 3714
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->updateSwitchCameraUI(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public updateThumbnail(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 657
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mThumbnailUIManager:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    if-eqz v0, :cond_0

    .line 658
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsThumbnailAnimationNeed:Z

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->updateThumbnail(Landroid/graphics/Bitmap;Z)V

    :cond_0
    return-void
.end method

.method public updateThumbnailUri(Landroid/net/Uri;)V
    .locals 1

    const/4 v0, 0x1

    .line 664
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->updateThumbnailUri(Landroid/net/Uri;Z)V

    return-void
.end method

.method public updateThumbnailUri(Landroid/net/Uri;Z)V
    .locals 2

    .line 669
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mThumbnailUIManager:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    if-eqz v0, :cond_0

    .line 670
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    .line 671
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->isSupportShare()Z

    move-result v1

    .line 670
    invoke-virtual {v0, p1, p2, v1}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->updateThumbnailUri(Landroid/net/Uri;ZZ)V

    :cond_0
    const/16 p1, 0x20

    .line 673
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/BaseAppUI;->notifyRawActionToAppUI(I)V

    return-void
.end method

.method public updateTopBarUI()V
    .locals 2

    .line 747
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIHandler:Lcom/transsion/camera/app/ui/BaseAppUI$UIHandler;

    const/16 v1, 0x6c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 748
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIHandler:Lcom/transsion/camera/app/ui/BaseAppUI$UIHandler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public updateTriggerSelfTimerPriority(I)V
    .locals 0

    .line 973
    iput p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mTriggerSelfTimerPriority:I

    return-void
.end method

.method public updateUIState(IILjava/lang/String;)V
    .locals 3

    .line 1008
    sget-object v0, Lcom/transsion/camera/app/ui/BaseAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateUIState] state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/transsion/camera/app/common/AppUIState;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1009
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIHandler:Lcom/transsion/camera/app/ui/BaseAppUI$UIHandler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1010
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIHandler:Lcom/transsion/camera/app/ui/BaseAppUI$UIHandler;

    invoke-virtual {p0, v1, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public updateWideCameraUI(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 3720
    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/ui/BaseAppUI;->onModePanelDistanceChanged(FZ)V

    .line 3721
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    if-eqz p0, :cond_0

    .line 3722
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->updateWideCameraUI(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public updateWideCameraUIByMode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 3728
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    if-eqz p0, :cond_0

    .line 3729
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->updateWideCameraUIByMode(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
