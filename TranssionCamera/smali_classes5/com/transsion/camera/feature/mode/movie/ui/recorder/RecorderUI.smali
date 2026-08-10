.class public Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;
.super Ljava/lang/Object;
.source "RecorderUI.java"

# interfaces
.implements Lcom/transsion/camera/feature/mode/movie/ui/recorder/IRecorderUI;


# static fields
.field private static final ANDROID_PACKAGE_NAME:Ljava/lang/String; = "android"

.field private static final ANIMATE_DURATION:J = 0x12cL

.field private static final CONFIRM_FRAGMENT_TAG:Ljava/lang/String; = "confirm"

.field private static final EMPTY:Ljava/lang/String; = ""

.field private static final FLASH_LOW_POWER_TIPS:Ljava/lang/String; = "flash_low_power_tips"

.field private static final FLASH_LOW_TEMPERATURE_TIPS:Ljava/lang/String; = "flash_low_temperature_protection"

.field private static final INTEGER_TYPE:Ljava/lang/String; = "integer"

.field private static final NAVIGATION_MODE:Ljava/lang/String; = "config_navBarInteractionMode"

.field private static final NAV_BAR_MODE_GESTURAL:I = 0x2

.field private static final PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private static final PROPERTY_ALPHA:Ljava/lang/String; = "alpha"

.field private static final PROPERTY_TRANSLATION_Y:Ljava/lang/String; = "translationY"

.field private static final RESOURCES_TYPE_STRING:Ljava/lang/String; = "string"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final TOAST_Y_OFFSET:I = 0x8

.field private static final UPDATE_DELAY_TIME:J = 0x320L

.field private static final UPDATE_FLASH_UI_IN_MOVIE_CODE:I = 0x44d


# instance fields
.field private final mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private mBatteryStatus:I

.field private mCameraView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

.field private mCancelRecordTip:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private mConfirmDialog:Lcom/transsion/camera/feature/mode/movie/ui/dialog/ConfirmDialog;

.field private final mContext:Landroid/content/Context;

.field private mDeleteView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

.field private mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

.field private mFlashController:Lcom/transsion/camera/feature/mode/movie/FlashController;

.field private volatile mFlashTorch:Z

.field private mFlashTorchWhenPaused:Z

.field private mFlashView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

.field private final mFrontSupportMovie:Z

.field private mHoverAnimator:Landroid/animation/ValueAnimator;

.field private final mInterpolator:Landroid/view/animation/PathInterpolator;

.field private mIsCameraSwitching:Z

.field private mIsPreviewMovie:Z

.field private mKeepStableTip:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private final mLowPowerHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private final mLowTemperatureHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private final mMainHandler:Landroid/os/Handler;

.field private final mModeAboveMainCtrlInflateRoot:Landroid/view/ViewGroup;

.field private mMovieOperator:Lcom/transsion/camera/feature/mode/movie/IMovieOperator;

.field private final mMovieRecordCallback:Lcom/transsion/camera/feature/mode/movie/IMovieRecorder$MovieRecordCallback;

.field private mMovieRecorder:Lcom/transsion/camera/feature/mode/movie/IMovieRecorder;

.field private final mMovieUI:Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;

.field private mOrientation:I

.field private mPaused:Z

.field private mPreviewView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

.field private final mProduceMovieCallback:Lcom/transsion/camera/feature/mode/movie/IMovieRecorder$ProduceMovieCallback;

.field private mProgressCircle:Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderProgressView;

.field private mProgressCircleWrap:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

.field private mRecordedNumber:I

.field private mRecorderOperation:Landroid/view/View;

.field private mRecorderRoot:Landroid/view/View;

.field private mScreenFormType:I

.field private mShutterView:Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress;

.field private mShutterViewContainer:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

.field private mStopToast:Landroid/widget/Toast;

.field private mTemperatureStatus:I

.field private mTotalNumber:I

.field private mVisibility:Z

.field private mVisibilityAnimator:Landroid/animation/AnimatorSet;


# direct methods
.method public static synthetic $r8$lambda$-kAJMxroJJepvVKJZ5TDAiyYOCM(Lcom/transsion/camera/feature/mode/movie/ui/dialog/ConfirmDialog$ICallBack;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->lambda$showConfirmDialog$2(Lcom/transsion/camera/feature/mode/movie/ui/dialog/ConfirmDialog$ICallBack;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$3DOUx_UGI7_3Qt7bg-kce4lzotM(Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->lambda$updateWhenProduceSuccess$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$5lnaU-O4JmZz6nxctN2VPSZSXhI(Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->deleteLongClick(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$T-sItfkiqjeYITIVjmGEA1cewu0(Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->flashClick(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$W25SpEb3UFFQ3PzZs2lGroGBoco(Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->previewClick(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XsJlnK9KXSICackGM20fGv2yik8(Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->showFlashUI()V

    return-void
.end method

.method public static synthetic $r8$lambda$Z10Pj-AKjWrd4xKd6Wm1ZQc7U0g(Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->shutterClick(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$brqe7w9FfMoLKVH_oD-gis80T1A(Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;Landroid/view/ViewGroup$MarginLayoutParams;Landroid/view/ViewGroup$MarginLayoutParams;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->lambda$updateLayoutParams$1(Landroid/view/ViewGroup$MarginLayoutParams;Landroid/view/ViewGroup$MarginLayoutParams;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hUi6wdu5BEEHtN85d1BoWZqdfjg(Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->cameraClick(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$l8n3jN9XUQgqtSX9c8x3Sp2wMQM(Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->deleteClick(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vFAW0lK_f9jMViwQ6CMgvJSArGM(Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->hideFlashUI()V

    return-void
.end method

.method public static synthetic $r8$lambda$zkofN0nEdT2d1_tKx6CW79w-L6E(Lcom/transsion/camera/feature/mode/movie/ui/dialog/ConfirmDialog$ICallBack;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->lambda$showConfirmDialog$3(Lcom/transsion/camera/feature/mode/movie/ui/dialog/ConfirmDialog$ICallBack;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 80
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 119
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3e800000    # 0.25f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;)V
    .locals 4

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 110
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mFlashTorch:Z

    .line 111
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mFlashTorchWhenPaused:Z

    .line 113
    iput v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mBatteryStatus:I

    .line 114
    iput v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mTemperatureStatus:I

    .line 118
    iput v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mScreenFormType:I

    .line 148
    iput v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mTotalNumber:I

    .line 149
    iput v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mRecordedNumber:I

    .line 157
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mPaused:Z

    .line 159
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mIsCameraSwitching:Z

    .line 161
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mIsPreviewMovie:Z

    .line 163
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3e800000    # 0.25f

    const v2, 0x3dcccccd    # 0.1f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mInterpolator:Landroid/view/animation/PathInterpolator;

    .line 168
    new-instance v0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI$1;-><init>(Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mMainHandler:Landroid/os/Handler;

    .line 182
    new-instance v0, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mLowPowerHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 183
    new-instance v0, Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mLowTemperatureHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 185
    new-instance v0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI$2;-><init>(Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mMovieRecordCallback:Lcom/transsion/camera/feature/mode/movie/IMovieRecorder$MovieRecordCallback;

    .line 230
    new-instance v0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI$3;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI$3;-><init>(Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mProduceMovieCallback:Lcom/transsion/camera/feature/mode/movie/IMovieRecorder$ProduceMovieCallback;

    .line 282
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 283
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mMovieUI:Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;

    .line 285
    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->getAboveMainCtrlInflateRoot()Landroid/view/ViewGroup;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mModeAboveMainCtrlInflateRoot:Landroid/view/ViewGroup;

    .line 286
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mContext:Landroid/content/Context;

    const-string p2, "build_in_features_front_mode_order"

    .line 287
    invoke-static {p1, p2}, Lcom/transsion/camera/utils/CameraUtil;->getStringArray(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.transsion.camera.feature.mode.movie.MovieModeEntry"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mFrontSupportMovie:Z

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->updateFlashView()V

    return-void
.end method

.method static synthetic access$100()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 78
    sget-object v0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;)Lcom/transsion/camera/feature/mode/movie/IMovieOperator;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mMovieOperator:Lcom/transsion/camera/feature/mode/movie/IMovieOperator;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->updateWhenProduceSuccess()V

    return-void
.end method

.method static synthetic access$1200(Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;)Lcom/transsion/camera/feature/mode/movie/IMovieRecorder;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mMovieRecorder:Lcom/transsion/camera/feature/mode/movie/IMovieRecorder;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;)Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mShutterView:Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;)Landroid/view/View;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mRecorderRoot:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;)Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mMovieUI:Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;)Landroid/view/View;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mRecorderOperation:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;)Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mProgressCircleWrap:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;)Lcom/transsion/camera/app/common/IAppUI;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;)Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderProgressView;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mProgressCircle:Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderProgressView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->cancelStopToast()V

    return-void
.end method

.method static synthetic access$700(Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;)I
    .locals 0

    .line 78
    iget p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mRecordedNumber:I

    return p0
.end method

.method static synthetic access$702(Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;I)I
    .locals 0

    .line 78
    iput p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mRecordedNumber:I

    return p1
.end method

.method static synthetic access$800(Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->updateOperationUI()V

    return-void
.end method

.method static synthetic access$900(Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;)Landroid/content/Context;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private cameraClick(Landroid/view/View;)V
    .locals 2

    .line 596
    sget-object v0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "cameraClick"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 597
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result v0

    .line 598
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v0, :cond_0

    const-string v0, "front"

    goto :goto_0

    :cond_0
    const-string v0, "back"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 598
    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 600
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->switchCamera()V

    .line 602
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 p1, 0x6

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-interface {p0, p1, v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    return-void
.end method

.method private cancelStopToast()V
    .locals 1

    .line 1024
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mCancelRecordTip:Lcom/transsion/camera/app/common/ui/HintInfo;

    if-eqz v0, :cond_0

    .line 1025
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_0
    return-void
.end method

.method private deleteClick(Landroid/view/View;)V
    .locals 3

    .line 621
    sget-object p1, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "deleteClick"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 622
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "duplicate dialog, return"

    .line 623
    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 626
    :cond_0
    sget p1, Lcom/transsion/camera/feature/movie/R$string;->re_record_confirm_message:I

    sget v0, Lcom/transsion/camera/feature/movie/R$string;->re_record:I

    sget v1, Lcom/transsion/camera/feature/movie/R$string;->cancel:I

    new-instance v2, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI$4;

    invoke-direct {v2, p0}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI$4;-><init>(Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;)V

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->showConfirmDialog(IIILcom/transsion/camera/feature/mode/movie/ui/dialog/ConfirmDialog$ICallBack;)V

    return-void
.end method

.method private deleteLongClick(Landroid/view/View;)Z
    .locals 3

    .line 650
    sget-object p1, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "deleteLongClick"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 651
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "duplicate dialog, return"

    .line 652
    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 655
    :cond_0
    iget p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mRecordedNumber:I

    if-gtz p1, :cond_1

    return v1

    .line 659
    :cond_1
    sget p1, Lcom/transsion/camera/feature/movie/R$string;->re_record_all_confirm_message:I

    sget v0, Lcom/transsion/camera/feature/movie/R$string;->re_record:I

    sget v1, Lcom/transsion/camera/feature/movie/R$string;->cancel:I

    new-instance v2, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI$5;

    invoke-direct {v2, p0}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI$5;-><init>(Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;)V

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->showConfirmDialog(IIILcom/transsion/camera/feature/mode/movie/ui/dialog/ConfirmDialog$ICallBack;)V

    const/4 p0, 0x1

    return p0
.end method

.method private disableUI()V
    .locals 1

    .line 580
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mRecorderRoot:Landroid/view/View;

    if-nez v0, :cond_0

    .line 581
    sget-object p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "disableUI mRecorderRoot is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 584
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->updateOperationUIEnable(Z)V

    return-void
.end method

.method private enableUI()V
    .locals 1

    .line 588
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mRecorderRoot:Landroid/view/View;

    if-nez v0, :cond_0

    .line 589
    sget-object p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "enableUI mRecorderRoot is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 592
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->updateOperationUIEnable(Z)V

    return-void
.end method

.method private flashClick(Landroid/view/View;)V
    .locals 2

    .line 538
    sget-object p1, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "flashClick"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 539
    iget p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mBatteryStatus:I

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    iget p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mTemperatureStatus:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 544
    :cond_0
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mFlashTorch:Z

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mFlashTorch:Z

    .line 545
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->updateFlashView()V

    .line 546
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->updateFlash()V

    return-void

    .line 541
    :cond_1
    :goto_0
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->showLowPowerOrTemperatureTip(Z)V

    return-void
.end method

.method private getBottomMargin(I)I
    .locals 4

    .line 520
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getBottomBarHeight()I

    move-result v0

    .line 521
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/feature/movie/R$dimen;->movie_record_operation_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 522
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getNavigationBarHeight()I

    move-result v2

    if-eqz p1, :cond_1

    const/4 v3, 0x2

    if-ne p1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 526
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getShutterPanelPaddingHeight()I

    move-result v3

    sub-int/2addr v0, v1

    sub-int/2addr v0, v3

    :goto_1
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    .line 530
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/camera/feature/movie/R$dimen;->movie_panel_margin_bottom_hover:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 531
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    add-int v0, v2, p0

    :cond_2
    return v0
.end method

.method private getNavigationBarHeight()I
    .locals 1

    .line 1004
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->isSystemGestureOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1007
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getNavigationBarHeight()I

    move-result p0

    return p0
.end method

.method private getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 385
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 386
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mContext:Landroid/content/Context;

    .line 387
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "string"

    .line 386
    invoke-virtual {v0, p1, v1, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-gtz p0, :cond_0

    .line 389
    sget-object v0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getString invalid resName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", resId: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string p0, ""

    return-object p0

    .line 393
    :cond_0
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private hideDialog()V
    .locals 1

    .line 681
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 682
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private hideFlashUI()V
    .locals 2

    .line 428
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mFlashTorch:Z

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mFlashController:Lcom/transsion/camera/feature/mode/movie/FlashController;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/movie/FlashController;->turnOff()V

    .line 431
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mFlashView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 432
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mFlashView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private hideKeepStableTip()V
    .locals 1

    .line 361
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mKeepStableTip:Lcom/transsion/camera/app/common/ui/HintInfo;

    if-eqz v0, :cond_0

    .line 362
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_0
    return-void
.end method

.method private hideLowPowerOrTemperatureTip()V
    .locals 2

    .line 947
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mLowPowerHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 948
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mLowTemperatureHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method private inflateRecorderLayout()V
    .locals 3

    .line 445
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/movie/R$layout;->movie_recorder_layout:I

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mModeAboveMainCtrlInflateRoot:Landroid/view/ViewGroup;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    return-void
.end method

.method private initChildViewFromModeRoot()V
    .locals 3

    .line 450
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mModeAboveMainCtrlInflateRoot:Landroid/view/ViewGroup;

    sget v1, Lcom/transsion/camera/feature/movie/R$id;->movie_recorder_root:I

    .line 451
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mRecorderRoot:Landroid/view/View;

    .line 452
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mModeAboveMainCtrlInflateRoot:Landroid/view/ViewGroup;

    sget v1, Lcom/transsion/camera/feature/movie/R$id;->movie_progress_circle_wrap:I

    .line 453
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mProgressCircleWrap:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    .line 454
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mModeAboveMainCtrlInflateRoot:Landroid/view/ViewGroup;

    sget v1, Lcom/transsion/camera/feature/movie/R$id;->movie_progress_circle:I

    .line 455
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderProgressView;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mProgressCircle:Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderProgressView;

    .line 456
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mModeAboveMainCtrlInflateRoot:Landroid/view/ViewGroup;

    sget v1, Lcom/transsion/camera/feature/movie/R$id;->movie_recorder_operation:I

    .line 457
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mRecorderOperation:Landroid/view/View;

    .line 458
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mModeAboveMainCtrlInflateRoot:Landroid/view/ViewGroup;

    sget v1, Lcom/transsion/camera/feature/movie/R$id;->movie_record_flash:I

    .line 459
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mFlashView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 461
    new-instance v1, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 462
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mModeAboveMainCtrlInflateRoot:Landroid/view/ViewGroup;

    sget v1, Lcom/transsion/camera/feature/movie/R$id;->movie_record_camera:I

    .line 463
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mCameraView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 464
    new-instance v1, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 465
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result v0

    .line 466
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mCameraView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v0, :cond_0

    const-string v0, "front"

    goto :goto_0

    :cond_0
    const-string v0, "back"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 466
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 468
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mCameraView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mFrontSupportMovie:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 469
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mModeAboveMainCtrlInflateRoot:Landroid/view/ViewGroup;

    sget v1, Lcom/transsion/camera/feature/movie/R$id;->movie_record_shutter:I

    .line 470
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mShutterView:Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress;

    .line 471
    new-instance v1, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 472
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mModeAboveMainCtrlInflateRoot:Landroid/view/ViewGroup;

    sget v1, Lcom/transsion/camera/feature/movie/R$id;->movie_record_shutter_container:I

    .line 473
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mShutterViewContainer:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    .line 474
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mModeAboveMainCtrlInflateRoot:Landroid/view/ViewGroup;

    sget v1, Lcom/transsion/camera/feature/movie/R$id;->movie_record_delete:I

    .line 475
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mDeleteView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 476
    new-instance v1, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 477
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mDeleteView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    new-instance v1, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI$$ExternalSyntheticLambda4;-><init>(Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 478
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mModeAboveMainCtrlInflateRoot:Landroid/view/ViewGroup;

    sget v1, Lcom/transsion/camera/feature/movie/R$id;->movie_record_preview:I

    .line 479
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mPreviewView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 480
    new-instance v1, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI$$ExternalSyntheticLambda5;-><init>(Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initLowPowerAndTemperatureTips()V
    .locals 3

    .line 378
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mLowPowerHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    const-string v1, "flash_low_power_tips"

    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 379
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mLowPowerHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->enableBackground(Z)V

    .line 380
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mLowTemperatureHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    const-string v2, "flash_low_temperature_protection"

    invoke-direct {p0, v2}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 381
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mLowTemperatureHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->enableBackground(Z)V

    return-void
.end method

.method private isSystemGestureOn()Z
    .locals 4

    .line 1011
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v0, "config_navBarInteractionMode"

    const-string v1, "integer"

    const-string v2, "android"

    .line 1012
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    .line 1015
    sget-object p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "invalid config_navBarInteractionMode"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 1018
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    .line 1019
    sget-object v0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "navigationMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x2

    if-ne v0, p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private static synthetic lambda$showConfirmDialog$2(Lcom/transsion/camera/feature/mode/movie/ui/dialog/ConfirmDialog$ICallBack;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 695
    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/movie/ui/dialog/ConfirmDialog$ICallBack;->onCancel()V

    return-void
.end method

.method private static synthetic lambda$showConfirmDialog$3(Lcom/transsion/camera/feature/mode/movie/ui/dialog/ConfirmDialog$ICallBack;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 698
    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/movie/ui/dialog/ConfirmDialog$ICallBack;->onConfirm()V

    return-void
.end method

.method private synthetic lambda$updateLayoutParams$1(Landroid/view/ViewGroup$MarginLayoutParams;Landroid/view/ViewGroup$MarginLayoutParams;Landroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "RecorderBottomMargin"

    .line 505
    invoke-virtual {p3, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 506
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mRecorderOperation:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string p1, "ProgressBottomMargin"

    .line 507
    invoke-virtual {p3, p1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 508
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mProgressCircleWrap:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private synthetic lambda$updateWhenProduceSuccess$0()V
    .locals 1

    .line 269
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->onRecordRollback()V

    .line 270
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mMovieUI:Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0}, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;->updateCurrentState(IZZ)V

    return-void
.end method

.method private onHide()V
    .locals 1

    const/4 v0, 0x0

    .line 820
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->updateOperationUIEnable(Z)V

    .line 821
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->turnOffFlash()V

    .line 822
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->hideKeepStableTip()V

    .line 823
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->hideLowPowerOrTemperatureTip()V

    return-void
.end method

.method private onRecordRollback()V
    .locals 2

    .line 275
    sget-object v0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onRecordRollback"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 276
    iput v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mRecordedNumber:I

    .line 277
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mShutterView:Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress;->setSegments(Ljava/util/List;)V

    .line 278
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->updateOperationUI()V

    return-void
.end method

.method private onShow()V
    .locals 1

    const/4 v0, 0x1

    .line 815
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->updateOperationUIEnable(Z)V

    .line 816
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->showKeepStableTip()V

    return-void
.end method

.method private previewClick(Landroid/view/View;)V
    .locals 2

    .line 716
    sget-object p1, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "previewClick"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 717
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mIsPreviewMovie:Z

    .line 718
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mMovieRecorder:Lcom/transsion/camera/feature/mode/movie/IMovieRecorder;

    invoke-interface {v0}, Lcom/transsion/camera/feature/mode/movie/IMovieRecorder;->getMovieFeed()Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "playback with no data,maybe in wrong state"

    .line 720
    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 723
    :cond_0
    invoke-static {}, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MoviePlaybackGuard;->getInstance()Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MoviePlaybackGuard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MoviePlaybackGuard;->available()Z

    move-result v1

    if-nez v1, :cond_1

    const-string p0, "playback is not available now!"

    .line 724
    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 727
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mMovieOperator:Lcom/transsion/camera/feature/mode/movie/IMovieOperator;

    invoke-interface {p0, v0}, Lcom/transsion/camera/feature/mode/movie/IMovieOperator;->playback(Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;)V

    return-void
.end method

.method private recordFinished()Z
    .locals 1

    .line 749
    iget v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mRecordedNumber:I

    iget p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mTotalNumber:I

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private releaseAnimator()V
    .locals 1

    .line 764
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mVisibilityAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 765
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 766
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mVisibilityAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 767
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mVisibilityAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    const/4 v0, 0x0

    .line 768
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mVisibilityAnimator:Landroid/animation/AnimatorSet;

    :cond_0
    return-void
.end method

.method private saveDraft()Z
    .locals 4

    .line 963
    iget v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mRecordedNumber:I

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    .line 964
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mMovieRecorder:Lcom/transsion/camera/feature/mode/movie/IMovieRecorder;

    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/movie/IMovieRecorder;->resetTheme()V

    return v1

    .line 967
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 968
    sget-object p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "duplicate dialog, return"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 971
    :cond_1
    sget v0, Lcom/transsion/camera/feature/movie/R$string;->save_draft_confirm_message:I

    sget v1, Lcom/transsion/camera/feature/movie/R$string;->save:I

    sget v2, Lcom/transsion/camera/feature/movie/R$string;->cancel:I

    new-instance v3, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI$8;

    invoke-direct {v3, p0}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI$8;-><init>(Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;)V

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->showConfirmDialog(IIILcom/transsion/camera/feature/mode/movie/ui/dialog/ConfirmDialog$ICallBack;)V

    const/4 p0, 0x1

    return p0
.end method

.method private showConfirmDialog(IIILcom/transsion/camera/feature/mode/movie/ui/dialog/ConfirmDialog$ICallBack;)V
    .locals 3

    .line 690
    new-instance v0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 691
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mShutterView:Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    const-string v1, ""

    .line 692
    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object v0

    .line 693
    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setMessage(I)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI$$ExternalSyntheticLambda8;

    invoke-direct {v0, p4}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI$$ExternalSyntheticLambda8;-><init>(Lcom/transsion/camera/feature/mode/movie/ui/dialog/ConfirmDialog$ICallBack;)V

    .line 694
    invoke-virtual {p1, p3, v0}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object p1

    new-instance p3, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI$$ExternalSyntheticLambda9;

    invoke-direct {p3, p4}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI$$ExternalSyntheticLambda9;-><init>(Lcom/transsion/camera/feature/mode/movie/ui/dialog/ConfirmDialog$ICallBack;)V

    .line 697
    invoke-virtual {p1, p2, p3}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object p1

    .line 700
    invoke-virtual {p1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->create()Lcom/transsion/widgetslib/dialog/PromptDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    .line 701
    new-instance p2, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI$6;

    invoke-direct {p2, p0}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI$6;-><init>(Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;)V

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 707
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/PromptDialog;->show()V

    return-void
.end method

.method private showFlashUI()V
    .locals 2

    .line 421
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mFlashView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mFlashView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 424
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->updateFlash()V

    return-void
.end method

.method private showKeepStableTip()V
    .locals 3

    .line 352
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mKeepStableTip:Lcom/transsion/camera/app/common/ui/HintInfo;

    if-nez v0, :cond_0

    .line 353
    new-instance v0, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mKeepStableTip:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 354
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mContext:Landroid/content/Context;

    sget v2, Lcom/transsion/camera/feature/movie/R$string;->movie_keep_stable_tip:I

    .line 355
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 354
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mKeepStableTip:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method private showLowPowerOrTemperatureTip(Z)V
    .locals 2

    .line 931
    iget v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mBatteryStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    if-eqz p1, :cond_0

    .line 933
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mLowPowerHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    goto :goto_0

    .line 935
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mLowPowerHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showLowPowerHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    goto :goto_0

    .line 937
    :cond_1
    iget v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mTemperatureStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    if-eqz p1, :cond_2

    .line 939
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mLowTemperatureHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    goto :goto_0

    .line 941
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mLowTemperatureHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showLowPowerHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private shutterClick(Landroid/view/View;)V
    .locals 2

    .line 607
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mMovieOperator:Lcom/transsion/camera/feature/mode/movie/IMovieOperator;

    invoke-interface {p1}, Lcom/transsion/camera/feature/mode/movie/IMovieOperator;->checkRecordable()Z

    move-result p1

    if-nez p1, :cond_0

    .line 608
    sget-object p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "shutterClick not recordable"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 611
    :cond_0
    sget-object p1, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "shutterClick mRecordedNumber: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mRecordedNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mTotalNumber: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mTotalNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 613
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->recordFinished()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 614
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mMovieRecorder:Lcom/transsion/camera/feature/mode/movie/IMovieRecorder;

    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/movie/IMovieRecorder;->produceMovie()V

    goto :goto_0

    .line 616
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mMovieRecorder:Lcom/transsion/camera/feature/mode/movie/IMovieRecorder;

    iget p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mOrientation:I

    invoke-interface {p1, p0}, Lcom/transsion/camera/feature/mode/movie/IMovieRecorder;->startRecord(I)V

    :goto_0
    return-void
.end method

.method private turnOffFlash()V
    .locals 1

    const/4 v0, 0x0

    .line 889
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mFlashTorch:Z

    .line 890
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->updateFlash()V

    .line 891
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->updateFlashView()V

    return-void
.end method

.method private updateFlash()V
    .locals 1

    .line 550
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mFlashTorch:Z

    if-eqz v0, :cond_0

    .line 551
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mFlashController:Lcom/transsion/camera/feature/mode/movie/FlashController;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/FlashController;->turnOn()V

    goto :goto_0

    .line 553
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mFlashController:Lcom/transsion/camera/feature/mode/movie/FlashController;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/FlashController;->turnOff()V

    :goto_0
    return-void
.end method

.method private updateFlashView()V
    .locals 1

    .line 437
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mFlashTorch:Z

    if-eqz v0, :cond_0

    .line 438
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mFlashView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    sget v0, Lcom/transsion/camera/feature/movie/R$drawable;->ic_movie_recorder_flash_on:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 440
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mFlashView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    sget v0, Lcom/transsion/camera/feature/movie/R$drawable;->ic_movie_recorder_flash_off:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method private updateLayoutParams(IZ)V
    .locals 7

    .line 484
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    .line 486
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->getBottomMargin(I)I

    move-result p1

    .line 487
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mRecorderOperation:Landroid/view/View;

    .line 488
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 489
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mProgressCircleWrap:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    .line 490
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 492
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 494
    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 496
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz p2, :cond_0

    const/4 p2, 0x2

    new-array v4, p2, [I

    const/4 v5, 0x0

    aput v2, v4, v5

    const/4 v2, 0x1

    aput p1, v4, v2

    const-string v6, "RecorderBottomMargin"

    .line 498
    invoke-static {v6, v4}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    new-array v6, p2, [I

    aput v3, v6, v5

    aput p1, v6, v2

    const-string p1, "ProgressBottomMargin"

    .line 500
    invoke-static {p1, v6}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    new-array p2, p2, [Landroid/animation/PropertyValuesHolder;

    aput-object v4, p2, v5

    aput-object p1, p2, v2

    .line 501
    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x190

    .line 502
    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 503
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 504
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI$$ExternalSyntheticLambda7;

    invoke-direct {p2, p0, v0, v1}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI$$ExternalSyntheticLambda7;-><init>(Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;Landroid/view/ViewGroup$MarginLayoutParams;Landroid/view/ViewGroup$MarginLayoutParams;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 510
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 512
    :cond_0
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 513
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mRecorderOperation:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 514
    iput p1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 515
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mProgressCircleWrap:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void
.end method

.method private updateOperationUI()V
    .locals 2

    .line 731
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mShutterView:Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress;

    iget v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mRecordedNumber:I

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress;->setProgress(I)V

    .line 732
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->recordFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 733
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mShutterView:Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress;

    sget v1, Lcom/transsion/camera/feature/movie/R$drawable;->ic_movie_recorder_shutter_finish:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 735
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mShutterView:Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress;

    sget v1, Lcom/transsion/camera/feature/movie/R$drawable;->ic_movie_recorder_shutter:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 738
    :goto_0
    iget v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mRecordedNumber:I

    if-nez v0, :cond_1

    .line 739
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mDeleteView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 740
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mPreviewView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 742
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mDeleteView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 743
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mPreviewView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 745
    :goto_1
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mFlashView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private updateOperationUIEnable(Z)V
    .locals 1

    .line 827
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mFlashView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 828
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mCameraView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 829
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mShutterView:Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 830
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mDeleteView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 831
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mPreviewView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void
.end method

.method private updateOrientation(Z)V
    .locals 2

    .line 901
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mFlashView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iget v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mOrientation:I

    invoke-virtual {v0, v1, p1}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    .line 902
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mCameraView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iget v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mOrientation:I

    invoke-virtual {v0, v1, p1}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    .line 903
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mShutterViewContainer:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    iget v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mOrientation:I

    invoke-virtual {v0, v1, p1}, Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;->setOrientation(IZ)V

    .line 904
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mDeleteView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iget v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mOrientation:I

    invoke-virtual {v0, v1, p1}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    .line 905
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mPreviewView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iget v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mOrientation:I

    invoke-virtual {v0, v1, p1}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    .line 906
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mProgressCircleWrap:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    iget p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mOrientation:I

    invoke-virtual {v0, p0, p1}, Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;->setOrientation(IZ)V

    return-void
.end method

.method private updateSegments(Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;)V
    .locals 11

    .line 314
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;->getDuration()J

    move-result-wide v0

    .line 315
    new-instance v2, Ljava/util/ArrayList;

    .line 316
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;->getSectionNum()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 318
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;->getThemeSection()Ljava/util/List;

    move-result-object p1

    .line 319
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v3, :cond_0

    .line 321
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig$ThemeSectionConfig;

    .line 323
    invoke-virtual {v8}, Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig$ThemeSectionConfig;->getDuration()J

    move-result-wide v8

    add-long/2addr v4, v8

    long-to-float v8, v4

    const/high16 v9, 0x3f800000    # 1.0f

    mul-float/2addr v8, v9

    long-to-float v9, v0

    div-float/2addr v8, v9

    const/high16 v9, 0x43b40000    # 360.0f

    mul-float/2addr v8, v9

    .line 326
    new-instance v9, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress$Segment;

    sub-float v10, v8, v6

    invoke-direct {v9, v6, v10}, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress$Segment;-><init>(FF)V

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    move v6, v8

    goto :goto_0

    .line 331
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mShutterView:Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress;

    invoke-virtual {p0, v2}, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress;->setSegments(Ljava/util/List;)V

    return-void
.end method

.method private updateSegments2(Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;)V
    .locals 5

    .line 335
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;->getSectionNum()I

    move-result p1

    int-to-float v0, p1

    const/high16 v1, 0x43b40000    # 360.0f

    div-float/2addr v1, v0

    .line 338
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    .line 341
    new-instance v3, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress$Segment;

    int-to-float v4, v2

    mul-float/2addr v4, v1

    invoke-direct {v3, v4, v1}, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress$Segment;-><init>(FF)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 344
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mShutterView:Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress;->setSegments(Ljava/util/List;)V

    return-void
.end method

.method private updateWhenProduceSuccess()V
    .locals 4

    .line 268
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI$$ExternalSyntheticLambda11;-><init>(Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;)V

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private visibilityAnimate(Z)V
    .locals 8

    .line 835
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->releaseAnimator()V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    .line 838
    :cond_1
    iget v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mScreenFormType:I

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->getBottomMargin(I)I

    move-result v0

    int-to-float v0, v0

    :goto_1
    const/4 v2, 0x1

    new-array v3, v2, [F

    const/4 v4, 0x0

    aput v1, v3, v4

    const-string v5, "alpha"

    .line 841
    invoke-static {v5, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    new-array v5, v2, [F

    aput v0, v5, v4

    const-string v6, "translationY"

    .line 843
    invoke-static {v6, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    .line 845
    iget-object v6, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mRecorderOperation:Landroid/view/View;

    const/4 v7, 0x2

    new-array v7, v7, [Landroid/animation/PropertyValuesHolder;

    aput-object v3, v7, v4

    aput-object v5, v7, v2

    .line 846
    invoke-static {v6, v7}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 848
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mVisibilityAnimator:Landroid/animation/AnimatorSet;

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object v3, v2, v4

    .line 849
    invoke-virtual {v5, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 850
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mVisibilityAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v3, 0x12c

    invoke-virtual {v2, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 851
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mVisibilityAnimator:Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 852
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mVisibilityAnimator:Landroid/animation/AnimatorSet;

    new-instance v3, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI$7;

    invoke-direct {v3, p0, p1, v1, v0}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI$7;-><init>(Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;ZFF)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 885
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mVisibilityAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method


# virtual methods
.method public hideFlashView()V
    .locals 2

    .line 413
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI$$ExternalSyntheticLambda10;-><init>(Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public init(II)V
    .locals 0

    .line 368
    iput p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mOrientation:I

    .line 369
    iput p2, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mScreenFormType:I

    .line 370
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->inflateRecorderLayout()V

    .line 371
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->initChildViewFromModeRoot()V

    const/4 p1, 0x0

    .line 372
    invoke-direct {p0, p2, p1}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->updateLayoutParams(IZ)V

    .line 373
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->updateOrientation(Z)V

    .line 374
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->initLowPowerAndTemperatureTips()V

    return-void
.end method

.method public isFlashTorch()Z
    .locals 0

    .line 417
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mFlashTorchWhenPaused:Z

    return p0
.end method

.method public notifyCameraOperateAction(I)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v0, :cond_1

    const/16 v1, 0x9

    if-eq p1, v1, :cond_2

    const/16 v1, 0x1b

    if-eq p1, v1, :cond_0

    const/16 v0, 0x34

    if-eq p1, v0, :cond_4

    const/16 v0, 0x35

    if-eq p1, v0, :cond_2

    goto :goto_0

    .line 565
    :cond_0
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mIsPreviewMovie:Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 568
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mIsCameraSwitching:Z

    .line 571
    :cond_2
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->enableUI()V

    goto :goto_0

    .line 560
    :cond_3
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mIsCameraSwitching:Z

    .line 562
    :cond_4
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->disableUI()V

    :goto_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 2

    .line 953
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mIsCameraSwitching:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 956
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mMovieRecorder:Lcom/transsion/camera/feature/mode/movie/IMovieRecorder;

    invoke-interface {v0}, Lcom/transsion/camera/feature/mode/movie/IMovieRecorder;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 959
    :cond_1
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->saveDraft()Z

    move-result p0

    return p0
.end method

.method public onScreenFormChanged(IZ)V
    .locals 0

    .line 911
    iput p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mScreenFormType:I

    .line 912
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->updateLayoutParams(IZ)V

    return-void
.end method

.method public pause()V
    .locals 1

    const/4 v0, 0x1

    .line 784
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mPaused:Z

    .line 785
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mFlashTorch:Z

    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mFlashTorchWhenPaused:Z

    .line 786
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mIsCameraSwitching:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mIsPreviewMovie:Z

    if-nez v0, :cond_0

    .line 787
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mFlashController:Lcom/transsion/camera/feature/mode/movie/FlashController;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/movie/FlashController;->turnOff()V

    :cond_0
    const/4 v0, 0x0

    .line 789
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mIsCameraSwitching:Z

    .line 790
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->hideDialog()V

    return-void
.end method

.method public resume()V
    .locals 1

    .line 774
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mFlashTorchWhenPaused:Z

    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mFlashTorch:Z

    const/4 v0, 0x0

    .line 775
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mIsPreviewMovie:Z

    .line 776
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mPaused:Z

    .line 777
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mRecorderRoot:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 778
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v0, 0x94

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_0
    return-void
.end method

.method public setFlashController(Lcom/transsion/camera/feature/mode/movie/FlashController;)V
    .locals 0

    .line 397
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mFlashController:Lcom/transsion/camera/feature/mode/movie/FlashController;

    return-void
.end method

.method public setMovieOperator(Lcom/transsion/camera/feature/mode/movie/IMovieOperator;)V
    .locals 0

    .line 348
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mMovieOperator:Lcom/transsion/camera/feature/mode/movie/IMovieOperator;

    return-void
.end method

.method public setMovieRecorder(Lcom/transsion/camera/feature/mode/movie/IMovieRecorder;)V
    .locals 1

    .line 292
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mMovieRecorder:Lcom/transsion/camera/feature/mode/movie/IMovieRecorder;

    .line 293
    invoke-interface {p1, p0}, Lcom/transsion/camera/feature/mode/movie/IMovieRecorder;->setRecorderUI(Lcom/transsion/camera/feature/mode/movie/ui/recorder/IRecorderUI;)V

    .line 294
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mMovieRecorder:Lcom/transsion/camera/feature/mode/movie/IMovieRecorder;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mMovieRecordCallback:Lcom/transsion/camera/feature/mode/movie/IMovieRecorder$MovieRecordCallback;

    invoke-interface {p1, v0}, Lcom/transsion/camera/feature/mode/movie/IMovieRecorder;->setRecordCallback(Lcom/transsion/camera/feature/mode/movie/IMovieRecorder$MovieRecordCallback;)V

    .line 295
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mMovieRecorder:Lcom/transsion/camera/feature/mode/movie/IMovieRecorder;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mProduceMovieCallback:Lcom/transsion/camera/feature/mode/movie/IMovieRecorder$ProduceMovieCallback;

    invoke-interface {p1, p0}, Lcom/transsion/camera/feature/mode/movie/IMovieRecorder;->setProduceMovieCallback(Lcom/transsion/camera/feature/mode/movie/IMovieRecorder$ProduceMovieCallback;)V

    return-void
.end method

.method public showFlashView()V
    .locals 2

    .line 409
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI$$ExternalSyntheticLambda6;-><init>(Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public showStopToast()V
    .locals 3

    .line 993
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mCancelRecordTip:Lcom/transsion/camera/app/common/ui/HintInfo;

    if-nez v0, :cond_0

    .line 994
    new-instance v0, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mCancelRecordTip:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 995
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->enableBackground(Z)V

    .line 996
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mCancelRecordTip:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setHighlight(Z)V

    .line 997
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mCancelRecordTip:Lcom/transsion/camera/app/common/ui/HintInfo;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mContext:Landroid/content/Context;

    sget v2, Lcom/transsion/camera/feature/movie/R$string;->movie_recorder_back_toast:I

    .line 998
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 997
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 1000
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mCancelRecordTip:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method public unInit()V
    .locals 2

    .line 754
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 755
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->hideKeepStableTip()V

    .line 756
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->releaseAnimator()V

    .line 757
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mConfirmDialog:Lcom/transsion/camera/feature/mode/movie/ui/dialog/ConfirmDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/DialogFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 758
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mConfirmDialog:Lcom/transsion/camera/feature/mode/movie/ui/dialog/ConfirmDialog;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 760
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mModeAboveMainCtrlInflateRoot:Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mRecorderRoot:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public updateBatteryStatus(II)V
    .locals 1

    .line 916
    iput p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mBatteryStatus:I

    .line 917
    iput p2, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mTemperatureStatus:I

    .line 919
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mVisibility:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    goto :goto_0

    .line 925
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->hideLowPowerOrTemperatureTip()V

    goto :goto_1

    .line 922
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->turnOffFlash()V

    const/4 p1, 0x0

    .line 923
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->showLowPowerOrTemperatureTip(Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method public updateFlashValue(Ljava/lang/String;)V
    .locals 3

    .line 401
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mFlashController:Lcom/transsion/camera/feature/mode/movie/FlashController;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/movie/FlashController;->isFlashOn(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mFlashTorch:Z

    .line 402
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mMainHandler:Landroid/os/Handler;

    const/16 v0, 0x44d

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 403
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mPaused:Z

    if-nez p1, :cond_0

    .line 404
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mMainHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method public updateOrientation(I)V
    .locals 0

    .line 896
    iput p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mOrientation:I

    const/4 p1, 0x1

    .line 897
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->updateOrientation(Z)V

    return-void
.end method

.method public updateTheme(Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;)V
    .locals 3

    .line 299
    sget-object v0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateTheme id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 300
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mMovieRecorder:Lcom/transsion/camera/feature/mode/movie/IMovieRecorder;

    invoke-interface {v1, p1}, Lcom/transsion/camera/feature/mode/movie/IMovieRecorder;->updateTheme(Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;)V

    .line 301
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/movie/data/RecordHistory;->getRecordedCount(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mRecordedNumber:I

    .line 302
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;->getSectionNum()I

    move-result v1

    iput v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mTotalNumber:I

    .line 303
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->updateSegments(Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;)V

    .line 305
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->updateOperationUI()V

    .line 306
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateTheme mTotalNumber: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mTotalNumber:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mRecordedNumber: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mRecordedNumber:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public updateVisibility(ZZ)V
    .locals 2

    .line 795
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mVisibility:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 797
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v1, 0x94

    invoke-interface {p1, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 798
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->onShow()V

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    .line 800
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->visibilityAnimate(Z)V

    goto :goto_0

    .line 802
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mRecorderRoot:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 805
    :cond_1
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->onHide()V

    if-eqz p2, :cond_2

    .line 807
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->visibilityAnimate(Z)V

    goto :goto_0

    .line 809
    :cond_2
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->mRecorderRoot:Landroid/view/View;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method
