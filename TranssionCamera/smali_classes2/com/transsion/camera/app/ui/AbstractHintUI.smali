.class public abstract Lcom/transsion/camera/app/ui/AbstractHintUI;
.super Ljava/lang/Object;
.source "AbstractHintUI.java"

# interfaces
.implements Lcom/transsion/camera/app/ui/IHintUI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/AbstractHintUI$HideAnimationEndListener;,
        Lcom/transsion/camera/app/ui/AbstractHintUI$ScaleAnimationEndListener;,
        Lcom/transsion/camera/app/ui/AbstractHintUI$UIHandler;
    }
.end annotation


# static fields
.field private static final PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field protected static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAlwaysHintFadeInAnimator:Landroid/animation/Animator;

.field private mAlwaysHintFadeOutAnimator:Landroid/animation/Animator;

.field private mAlwaysHintText:Landroid/widget/TextView;

.field private final mAlwaysInfoStack:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/transsion/camera/app/common/ui/HintInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

.field protected mAsdAlgorithResultLayout:Landroid/view/ViewGroup;

.field protected mAsdAlgorithResultLayoutWidth:I

.field protected mAsdEffectLayout:Landroid/view/ViewGroup;

.field protected mAsdEffectLayoutWidth:I

.field protected mAsdExpandAnimatorSet:Landroid/animation/AnimatorSet;

.field protected mAsdHideAnimatorSet:Landroid/animation/AnimatorSet;

.field private mAsdHideListener:Lcom/transsion/camera/app/ui/AbstractHintUI$HideAnimationEndListener;

.field private mAsdHintFadeInAnimator:Landroid/animation/Animator;

.field private mAsdHintFadeOutAnimator:Landroid/animation/Animator;

.field protected mAsdHintSlideInAnimator:Landroid/animation/Animator;

.field protected mAsdHintSlideOutAnimator:Landroid/animation/Animator;

.field protected mAsdShrinkAnimatorSet:Landroid/animation/AnimatorSet;

.field private mAutoHideHintText:Landroid/widget/TextView;

.field private mAutoHintFadeInAnimator:Landroid/animation/Animator;

.field private mAutoHintFadeOutAnimator:Landroid/animation/Animator;

.field private mCommonHintRoot:Landroid/widget/FrameLayout;

.field private mCommonHintRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

.field private mCurrentAlwaysInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private mCurrentAsdInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private mCurrentAutoHideInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private mCurrentOrientation:I

.field private mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

.field private mDelayedShowDynamicHint:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private mEnableUI:Z

.field private mEndHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private mExtraTrans:I

.field protected mHideAsdOnly:Z

.field protected mHideAsdTemp:Z

.field private mHintShown:Z

.field protected mHintStateChangeListener:Lcom/transsion/camera/app/common/IAppUIControl$HintStateChangeListener;

.field private mHoverAnimator:Landroid/animation/ValueAnimator;

.field private mIsAutoInfoShowing:Z

.field protected mIsNeedWaitScale:Z

.field private mIsRecording:Z

.field private mIsTransparent:Z

.field private mIsTwinkleGuideAvailable:Z

.field protected volatile mIsTwinkleGuideShowing:Z

.field private mIsVideoRecording:Z

.field protected mModePickerControl:Lcom/transsion/camera/app/common/IAppUIControl$IModePickerControl;

.field private mPaddingBottom:I

.field private mPaddingLeft:I

.field private mPaddingRight:I

.field private mPaddingTop:I

.field private mParentView:Landroid/view/View;

.field protected mPathInterpolator:Landroid/view/animation/PathInterpolator;

.field private mPreviewRect:Landroid/graphics/Rect;

.field private mPreviousExpandTime:J

.field mProgressBarHoverAnimator:Landroid/animation/ValueAnimator;

.field private mProgressBarView:Landroid/view/View;

.field private mProgressGroupLayout:Landroid/widget/LinearLayout;

.field private mProgressHintRoot:Landroid/widget/FrameLayout;

.field private mProgressHintText:Landroid/widget/TextView;

.field private mProgressLoadingView:Lcom/opensource/svgaplayer/SVGAImageView;

.field private mRecordingOrientation:I

.field private mResources:Landroid/content/res/Resources;

.field protected mRootView:Landroid/view/ViewGroup;

.field private mScaleListener:Lcom/transsion/camera/app/ui/AbstractHintUI$ScaleAnimationEndListener;

.field private mScreenFormType:I

.field private final mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

.field private mSuperNightScaleAnimatorSet:Landroid/animation/AnimatorSet;

.field private mTempInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private mTextViewIsRotate:Z

.field private mTransOrientation:I

.field private mTwinkleGuideEnabled:Z

.field private mTwinkleGuideImageView:Landroid/widget/ImageView;

.field private mTwinkleGuideMode:Ljava/lang/String;

.field private mTwinkleGuideRoot:Landroid/view/View;

.field private mTwinkleGuideTextView:Landroid/widget/TextView;

.field private mTwinkleGuideView:Lcom/opensource/svgaplayer/SVGAImageView;

.field protected mTwinkleSlideAnimatorSet:Landroid/animation/AnimatorSet;

.field private final mUIHandler:Lcom/transsion/camera/app/ui/AbstractHintUI$UIHandler;


# direct methods
.method public static synthetic $r8$lambda$AAWly2VsEurTiK_BUUgj7cStimc(Lcom/transsion/camera/app/ui/AbstractHintUI;IIILandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/ui/AbstractHintUI;->lambda$updateLayout$0(IIILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CjJQ3pGE8p7BJ-U2pHRGQo0nfKU(Lcom/transsion/camera/app/ui/AbstractHintUI;Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractHintUI;->lambda$updateProgressBarLayoutForHover$2(Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yEekjOf3FYRCVtYC1SS_VWD_8rw(Lcom/transsion/camera/app/ui/AbstractHintUI;IIILandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/ui/AbstractHintUI;->lambda$updateLayout$1(IIILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 57
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/ui/AbstractHintUI;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/AbstractHintUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 163
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3e800000    # 0.25f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/camera/app/ui/AbstractHintUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;)V
    .locals 3

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAsdInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 91
    new-instance v0, Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTempInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 98
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdExpandAnimatorSet:Landroid/animation/AnimatorSet;

    .line 99
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdShrinkAnimatorSet:Landroid/animation/AnimatorSet;

    .line 100
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdHideAnimatorSet:Landroid/animation/AnimatorSet;

    .line 101
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleSlideAnimatorSet:Landroid/animation/AnimatorSet;

    .line 102
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mSuperNightScaleAnimatorSet:Landroid/animation/AnimatorSet;

    .line 105
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsTransparent:Z

    .line 113
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsNeedWaitScale:Z

    .line 114
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mHideAsdTemp:Z

    .line 115
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mHideAsdOnly:Z

    .line 120
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsTwinkleGuideShowing:Z

    .line 121
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleGuideEnabled:Z

    const/4 v0, 0x1

    .line 122
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsTwinkleGuideAvailable:Z

    .line 148
    iput v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentOrientation:I

    .line 149
    iput v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTransOrientation:I

    .line 150
    iput v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mExtraTrans:I

    .line 151
    iput v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mPaddingTop:I

    .line 152
    iput v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mPaddingBottom:I

    .line 153
    iput v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mPaddingLeft:I

    .line 154
    iput v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mPaddingRight:I

    .line 158
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mPreviewRect:Landroid/graphics/Rect;

    .line 159
    iput v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mScreenFormType:I

    .line 160
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsVideoRecording:Z

    const/4 v2, -0x1

    .line 161
    iput v2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mRecordingOrientation:I

    .line 162
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsRecording:Z

    .line 168
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    .line 169
    new-instance v1, Lcom/transsion/camera/app/ui/AbstractHintUI$UIHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/app/ui/AbstractHintUI$UIHandler;-><init>(Lcom/transsion/camera/app/ui/AbstractHintUI;Lcom/transsion/camera/app/ui/AbstractHintUI$1;)V

    iput-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractHintUI$UIHandler;

    .line 170
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAlwaysInfoStack:Ljava/util/LinkedList;

    .line 171
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mEnableUI:Z

    if-eqz p1, :cond_0

    .line 173
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mScreenFormType:I

    .line 175
    :cond_0
    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    return-void
.end method

.method static synthetic access$100(Lcom/transsion/camera/app/ui/AbstractHintUI;Lcom/transsion/camera/app/common/ui/HintInfo;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->doShowHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/transsion/camera/app/ui/AbstractHintUI;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mSuperNightScaleAnimatorSet:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/transsion/camera/app/ui/AbstractHintUI;)Lcom/transsion/camera/app/common/ui/HintInfo;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTempInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/transsion/camera/app/ui/AbstractHintUI;)Lcom/transsion/camera/app/ui/AbstractHintUI$ScaleAnimationEndListener;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mScaleListener:Lcom/transsion/camera/app/ui/AbstractHintUI$ScaleAnimationEndListener;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/transsion/camera/app/ui/AbstractHintUI;)Lcom/transsion/camera/app/common/ui/HintInfo;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAsdInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/transsion/camera/app/ui/AbstractHintUI;)Landroid/widget/FrameLayout;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCommonHintRoot:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/app/ui/AbstractHintUI;Lcom/transsion/camera/app/common/ui/HintInfo;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->doHideInfo(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method static synthetic access$300(Lcom/transsion/camera/app/ui/AbstractHintUI;Lcom/transsion/camera/app/common/ui/HintInfo;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->showDynamicAlwaysHintView(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method static synthetic access$400(Lcom/transsion/camera/app/ui/AbstractHintUI;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->startTwinkleGuideAnim()V

    return-void
.end method

.method static synthetic access$500(Lcom/transsion/camera/app/ui/AbstractHintUI;Z)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->stopTwinkleGuideAnim(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/transsion/camera/app/ui/AbstractHintUI;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->doHideAllHints()V

    return-void
.end method

.method static synthetic access$700(Lcom/transsion/camera/app/ui/AbstractHintUI;)Ljava/lang/String;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleGuideMode:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/transsion/camera/app/ui/AbstractHintUI;Ljava/lang/String;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->updateSpecifiedMode(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/transsion/camera/app/ui/AbstractHintUI;)Landroid/view/View;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleGuideRoot:Landroid/view/View;

    return-object p0
.end method

.method private doAsdHintSlideAnim(ZZ)V
    .locals 3

    .line 1114
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractHintUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doAsdHintSlideAnim ----> isStart = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , resetAsdImmediately = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1116
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdHintSlideOutAnimator:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->end()V

    .line 1117
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdHintSlideOutAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->getAsdHintRootLayout()Landroid/view/ViewGroup;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 1118
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdHintSlideOutAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    goto :goto_0

    .line 1120
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mSuperNightScaleAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p1

    if-nez p1, :cond_2

    .line 1121
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdHintSlideOutAnimator:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->end()V

    .line 1122
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->getAsdHintRootLayout()Landroid/view/ViewGroup;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setTranslationY(F)V

    if-eqz p2, :cond_1

    .line 1124
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->getAsdHintRootLayout()Landroid/view/ViewGroup;

    move-result-object p0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    goto :goto_0

    .line 1126
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdHintSlideInAnimator:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->end()V

    .line 1127
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdHintSlideInAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->getAsdHintRootLayout()Landroid/view/ViewGroup;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 1128
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdHintSlideInAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    :cond_2
    :goto_0
    return-void
.end method

.method private doHideAllHints()V
    .locals 1

    .line 496
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->hideAsdHintView()V

    .line 497
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->hideAlwaysHintView()V

    .line 498
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->hideAutoHideHintView()V

    .line 499
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->hideProgressHintView()V

    const/4 v0, 0x1

    .line 500
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->stopTwinkleGuideAnim(Z)V

    return-void
.end method

.method private doHideInfo(Lcom/transsion/camera/app/common/ui/HintInfo;)V
    .locals 3

    .line 515
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractHintUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doHideInfo,info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " ,mCurrentAlwaysInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAlwaysInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 516
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v2, :cond_1

    const/4 p1, 0x2

    if-eq v0, p1, :cond_0

    goto/16 :goto_1

    .line 563
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->hideProgressHintView()V

    goto/16 :goto_1

    .line 548
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAutoHideInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    if-ne p1, v0, :cond_c

    .line 549
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->hideAutoHideHintView()V

    .line 550
    iput-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAutoHideInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 552
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAlwaysInfoStack:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_c

    .line 553
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAlwaysInfoStack:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/common/ui/HintInfo;

    if-eqz p1, :cond_c

    .line 554
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 555
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 556
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 557
    :cond_2
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->showAlwaysHintView(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    goto/16 :goto_1

    .line 518
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAlwaysInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    if-ne p1, v0, :cond_b

    .line 519
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAlwaysInfoStack:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 520
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->isAsdDynamic()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 521
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdExpandAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p1

    if-nez p1, :cond_6

    :cond_4
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdShrinkAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_5

    .line 522
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p1

    if-nez p1, :cond_6

    :cond_5
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdHideAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_7

    .line 523
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 524
    :cond_6
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsNeedWaitScale:Z

    goto :goto_0

    .line 526
    :cond_7
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->hideAsdHintViewWithAnim()V

    .line 527
    invoke-direct {p0, v2}, Lcom/transsion/camera/app/ui/AbstractHintUI;->removeTwinkleGuideMessages(Z)V

    goto :goto_0

    .line 530
    :cond_8
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->hideAlwaysHintView()V

    .line 532
    :goto_0
    iput-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAlwaysInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    goto :goto_1

    .line 535
    :cond_9
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAlwaysInfoStack:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 536
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_a

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 537
    :cond_a
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->showAlwaysHintView(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    goto :goto_1

    .line 542
    :cond_b
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAlwaysInfoStack:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 543
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAlwaysInfoStack:Ljava/util/LinkedList;

    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    :cond_c
    :goto_1
    return-void
.end method

.method private doShowHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V
    .locals 4

    .line 335
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mEndHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    if-eq v0, p1, :cond_b

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mEnableUI:Z

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 339
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsTwinkleGuideShowing:Z

    if-eqz v0, :cond_1

    .line 340
    sget-object p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "TwinkleGuide is showing, return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 343
    :cond_1
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractHintUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doShowHint,info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mCurrentAlwaysInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAlwaysInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 344
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getType()I

    move-result v0

    if-eqz v0, :cond_6

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    goto/16 :goto_0

    .line 387
    :cond_2
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->showProgressHintView(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    goto/16 :goto_0

    .line 369
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAlwaysInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    if-eqz v0, :cond_4

    .line 370
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAlwaysInfoStack:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 371
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAlwaysInfoStack:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAlwaysInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->push(Ljava/lang/Object;)V

    .line 374
    :cond_4
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->hideAsdHintView()V

    .line 375
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->hideAlwaysHintView()V

    const/4 v0, 0x0

    .line 376
    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAlwaysInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 377
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAutoHideInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 378
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->showAutoHideHintView(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 379
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractHintUI$UIHandler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 380
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getDuration()I

    move-result p1

    if-gtz p1, :cond_5

    const/16 p1, 0xbb8

    .line 384
    :cond_5
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractHintUI$UIHandler;

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 347
    :cond_6
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->isAsdDynamic()Z

    move-result v0

    const/16 v1, 0x6a

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->hasAeAfLockHint()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 348
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractHintUI$UIHandler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 349
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsAutoInfoShowing:Z

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAlwaysInfoStack:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/transsion/camera/app/ui/AbstractHintUI$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/transsion/camera/app/ui/AbstractHintUI$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 350
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAlwaysInfoStack:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 351
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAlwaysInfoStack:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/common/ui/HintInfo;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAlwaysHintText:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->showHintView(Lcom/transsion/camera/app/common/ui/HintInfo;Landroid/widget/TextView;)V

    :cond_7
    return-void

    .line 356
    :cond_8
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->aeAfLock()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 357
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractHintUI$UIHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 360
    :cond_9
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAlwaysInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    if-eqz v0, :cond_a

    if-eq p1, v0, :cond_a

    .line 361
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAlwaysInfoStack:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 362
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAlwaysInfoStack:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAlwaysInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->push(Ljava/lang/Object;)V

    .line 366
    :cond_a
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->showAlwaysHintView(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 392
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mRootView:Landroid/view/ViewGroup;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void

    .line 336
    :cond_b
    :goto_1
    sget-object p1, Lcom/transsion/camera/app/ui/AbstractHintUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "This hint info should never be shown. mEnableUI:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mEnableUI:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private hasAeAfLockHint()Z
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAlwaysInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    if-eqz v0, :cond_0

    .line 328
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->aeAfLock()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAlwaysInfoStack:Ljava/util/LinkedList;

    .line 330
    invoke-virtual {p0}, Ljava/util/LinkedList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/transsion/camera/app/ui/AbstractHintUI$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/transsion/camera/app/ui/AbstractHintUI$$ExternalSyntheticLambda0;-><init>()V

    .line 331
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private hideAlwaysHintView()V
    .locals 2

    .line 794
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractHintUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "hideAlwaysHintView"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 795
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAlwaysHintText:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->hideHintView(Landroid/widget/TextView;)V

    return-void
.end method

.method private hideAutoHideHintView()V
    .locals 2

    .line 808
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractHintUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "hideAutoHideHintView"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 809
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->updateLayout(Z)V

    .line 810
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsAutoInfoShowing:Z

    .line 811
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAutoHideHintText:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->hideHintView(Landroid/widget/TextView;)V

    return-void
.end method

.method private hideHintView(Landroid/widget/TextView;)V
    .locals 1

    const/4 v0, 0x0

    .line 855
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->updateHintState(Z)V

    const/16 p0, 0x8

    .line 856
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 p0, 0x0

    .line 857
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 858
    invoke-virtual {p1, p0, p0, p0, p0}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private hideProgressHintView()V
    .locals 2

    .line 901
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractHintUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "hideProgressHintView"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 902
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mRootView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 903
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mProgressLoadingView:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGAImageView;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 904
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mProgressLoadingView:Lcom/opensource/svgaplayer/SVGAImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/opensource/svgaplayer/SVGAImageView;->stopAnimation(Z)V

    .line 906
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mProgressHintRoot:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 907
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mProgressBarView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 908
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mProgressHintText:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$updateLayout$0(IIILandroid/animation/ValueAnimator;)V
    .locals 2

    const-string v0, "alpha"

    .line 1336
    invoke-virtual {p4, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 1337
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCommonHintRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    const-string v0, "padding"

    .line 1338
    invoke-virtual {p4, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    .line 1339
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCommonHintRoot:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1, p4, p2, p3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    return-void
.end method

.method private synthetic lambda$updateLayout$1(IIILandroid/animation/ValueAnimator;)V
    .locals 0

    .line 1353
    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    .line 1354
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCommonHintRoot:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1, p4, p2, p3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    return-void
.end method

.method private synthetic lambda$updateProgressBarLayoutForHover$2(Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1484
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1485
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mProgressGroupLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private removeDynamicAlwaysHintShowMessage(Lcom/transsion/camera/app/common/ui/HintInfo;)V
    .locals 3

    .line 723
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractHintUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeDynamicAlwaysHintShowMessage info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mDelayedShowDynamicHint: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mDelayedShowDynamicHint:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 725
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mDelayedShowDynamicHint:Lcom/transsion/camera/app/common/ui/HintInfo;

    if-ne p1, v0, :cond_0

    .line 726
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractHintUI$UIHandler;

    const/16 p1, 0x6a

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method private removeTwinkleGuideMessages(Z)V
    .locals 2

    .line 1033
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractHintUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[removeTwinkleGuideMessages]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1034
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractHintUI$UIHandler;

    if-eqz v0, :cond_3

    const/16 v1, 0x6b

    .line 1035
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1036
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractHintUI$UIHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1038
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractHintUI$UIHandler;

    const/16 v1, 0x6c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1039
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractHintUI$UIHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 1042
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleGuideEnabled:Z

    :cond_2
    const/4 p1, 0x1

    .line 1044
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->stopTwinkleGuideAnim(Z)V

    :cond_3
    return-void
.end method

.method private showAlwaysHintView(Lcom/transsion/camera/app/common/ui/HintInfo;)V
    .locals 6

    .line 731
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractHintUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showAlwaysHintView, info:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " , mIsAutoInfoShowing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsAutoInfoShowing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 733
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mEnableUI:Z

    if-nez v1, :cond_0

    const-string p0, "It shows dynamic always hint view ,but disable."

    .line 734
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 737
    :cond_0
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsTwinkleGuideShowing:Z

    if-eqz v1, :cond_1

    const-string p0, "TwinkleGuide is showing, return"

    .line 738
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 742
    :cond_1
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsAutoInfoShowing:Z

    if-nez v1, :cond_b

    .line 743
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAlwaysInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 744
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAlwaysInfoStack:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 745
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->isAsdDynamic()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    :cond_2
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->isAsdDynamic()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 746
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mPreviousExpandTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x1f4

    cmp-long v1, v1, v3

    if-lez v1, :cond_6

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdExpandAnimatorSet:Landroid/animation/AnimatorSet;

    .line 747
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdShrinkAnimatorSet:Landroid/animation/AnimatorSet;

    .line 748
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdHideAnimatorSet:Landroid/animation/AnimatorSet;

    .line 749
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-nez v1, :cond_6

    .line 750
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAsdInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAsdInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 751
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 752
    :cond_4
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTempInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 753
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTempInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 754
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTempInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setOtherDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 755
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTempInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setOtherMessage(Ljava/lang/String;)V

    .line 756
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTempInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->showAsdHintView(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 757
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->hideAlwaysHintView()V

    .line 759
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mPreviousExpandTime:J

    goto :goto_0

    .line 761
    :cond_6
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractHintUI$UIHandler;

    if-eqz v1, :cond_7

    .line 762
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/16 v2, 0x6a

    .line 763
    iput v2, v1, Landroid/os/Message;->what:I

    .line 764
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 765
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mDelayedShowDynamicHint:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 766
    iget-object v5, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractHintUI$UIHandler;

    invoke-virtual {v5, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 767
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractHintUI$UIHandler;

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 768
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showAlwaysHintView delayed show dynamic hint: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 772
    :cond_7
    :goto_0
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getTwinkleGuideMode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleGuideMode:Ljava/lang/String;

    .line 773
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->isTwinkleEnabled()Z

    move-result v0

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->isSuperNightGuideSupport()Z

    move-result v1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->isMagicSkyGuideSupport()Z

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->showTwinkleGuide(ZZZ)V

    .line 774
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleGuideMode:Ljava/lang/String;

    const-string v0, "com.transsion.camera.feature.mode.supernight.SuperNightModeEntry"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleGuideMode:Ljava/lang/String;

    const-string v0, "com.transsion.camera.feature.supernightfilter.mode.SuperNightFilterModeEntry"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_1

    .line 777
    :cond_8
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleGuideMode:Ljava/lang/String;

    const-string v0, "com.transsion.camera.feature.mode.magicsky.MagicSkyModeEntry"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 778
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleGuideTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10019e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 779
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleGuideImageView:Landroid/widget/ImageView;

    const v0, 0x7f0806e9

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 775
    :cond_9
    :goto_1
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleGuideTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1002ee

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 776
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleGuideImageView:Landroid/widget/ImageView;

    const v0, 0x7f0808f6

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 782
    :cond_a
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAlwaysHintText:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->showHintView(Lcom/transsion/camera/app/common/ui/HintInfo;Landroid/widget/TextView;)V

    .line 783
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->hideAsdHintView()V

    goto :goto_2

    .line 786
    :cond_b
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAlwaysInfoStack:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 787
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAlwaysInfoStack:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->push(Ljava/lang/Object;)V

    :cond_c
    :goto_2
    const/4 p1, 0x1

    .line 790
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->updateHintState(Z)V

    return-void
.end method

.method private showAutoHideHintView(Lcom/transsion/camera/app/common/ui/HintInfo;)V
    .locals 2

    .line 799
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractHintUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "showAutoHideHintView"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 800
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsAutoInfoShowing:Z

    const/4 v1, 0x0

    .line 801
    invoke-virtual {p0, p1, v1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->updateLayout(Lcom/transsion/camera/app/common/ui/HintInfo;Z)V

    .line 802
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAutoHideHintText:Landroid/widget/TextView;

    invoke-direct {p0, p1, v1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->showHintView(Lcom/transsion/camera/app/common/ui/HintInfo;Landroid/widget/TextView;)V

    .line 804
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->stopTwinkleGuideAnim(Z)V

    return-void
.end method

.method private showDynamicAlwaysHintView(Lcom/transsion/camera/app/common/ui/HintInfo;)V
    .locals 3

    .line 717
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractHintUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showDynamicAlwaysHintView info:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 718
    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mDelayedShowDynamicHint:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 719
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->showAlwaysHintView(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method private showHintView(Lcom/transsion/camera/app/common/ui/HintInfo;Landroid/widget/TextView;)V
    .locals 5

    .line 815
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 816
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 p0, 0x8

    .line 817
    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 820
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 821
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 822
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 824
    :cond_1
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 827
    :goto_0
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->isHighlight()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 828
    invoke-virtual {p2}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0600d2

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    goto :goto_1

    .line 830
    :cond_2
    invoke-virtual {p2}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0600d3

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    .line 832
    :goto_1
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 833
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 835
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {v1, v0, v0, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 836
    invoke-virtual {p2, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 838
    :cond_3
    invoke-virtual {p2, v2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 841
    :goto_2
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->isBackgroundEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 842
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->isHighlight()Z

    move-result p1

    if-eqz p1, :cond_4

    const p1, 0x7f080527

    .line 843
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_3

    :cond_4
    const p1, 0x7f080526

    .line 845
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_3

    .line 848
    :cond_5
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_3
    const/4 p1, 0x1

    .line 850
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->updateHintState(Z)V

    return-void
.end method

.method private showProgressHintView(Lcom/transsion/camera/app/common/ui/HintInfo;)V
    .locals 4

    .line 862
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractHintUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "showProgressHintView"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 863
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mProgressHintRoot:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 864
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getProgressType()I

    move-result v0

    const/high16 v2, -0x60000000

    const/16 v3, 0x8

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 885
    :pswitch_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 886
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mProgressHintRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 887
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mProgressBarView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 888
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mProgressLoadingView:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 889
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mProgressLoadingView:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGAImageView;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_0

    .line 890
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mProgressLoadingView:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGAImageView;->startAnimation()V

    goto :goto_0

    .line 876
    :pswitch_1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 877
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mProgressHintRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 878
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mProgressBarView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 879
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mProgressLoadingView:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 880
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mProgressLoadingView:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGAImageView;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_0

    .line 881
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mProgressLoadingView:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGAImageView;->startAnimation()V

    goto :goto_0

    .line 867
    :pswitch_2
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mRootView:Landroid/view/ViewGroup;

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 868
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mProgressHintRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 869
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mProgressBarView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 870
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mProgressLoadingView:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 871
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mProgressLoadingView:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGAImageView;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 872
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mProgressLoadingView:Lcom/opensource/svgaplayer/SVGAImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/opensource/svgaplayer/SVGAImageView;->stopAnimation(Z)V

    .line 895
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 896
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mProgressHintText:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private showTwinkleGuide(ZZZ)V
    .locals 4

    .line 996
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_twinkle_guild"

    const-string v3, "off"

    invoke-virtual {v0, v2, v3, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 997
    sget-object v1, Lcom/transsion/camera/app/ui/AbstractHintUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[showTwinkleGuide], isTwinkleGuildShowed="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " , twinkleGuideEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " , mTwinkleGuideEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleGuideEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " , isSuperNightGuideSupport="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " , isMagicSkyGuideSupport="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    const-string p0, "TwinkleGuide has showed, return!"

    .line 1001
    invoke-static {v1, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1004
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsTwinkleGuideAvailable:Z

    if-nez v0, :cond_1

    const-string p0, "TwinkleGuide is not Available, return !"

    .line 1005
    invoke-static {v1, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1008
    :cond_1
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsTwinkleGuideShowing:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    const-string p0, "TwinkleGuide is showing, return !"

    .line 1009
    invoke-static {v1, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1012
    :cond_2
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleGuideEnabled:Z

    if-ne v0, p1, :cond_3

    const-string p0, "twinkleGuideEnabled do not changed , return ! "

    .line 1013
    invoke-static {v1, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1016
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleGuideMode:Ljava/lang/String;

    const-string v2, "com.transsion.camera.feature.mode.supernight.SuperNightModeEntry"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleGuideMode:Ljava/lang/String;

    const-string v2, "com.transsion.camera.feature.supernightfilter.mode.SuperNightFilterModeEntry"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    if-nez p2, :cond_5

    const-string p0, "twinkleGuideEnabled do not support  SUPER_NIGHT_MODE, return ! "

    .line 1017
    invoke-static {v1, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1020
    :cond_5
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleGuideMode:Ljava/lang/String;

    const-string v0, "com.transsion.camera.feature.mode.magicsky.MagicSkyModeEntry"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_6

    if-nez p3, :cond_6

    const-string p0, "twinkleGuideEnabled do not support  MAGIC_SKY_MODE, return ! "

    .line 1021
    invoke-static {v1, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1024
    :cond_6
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleGuideEnabled:Z

    const/4 p2, 0x0

    .line 1025
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/ui/AbstractHintUI;->removeTwinkleGuideMessages(Z)V

    if-eqz p1, :cond_7

    .line 1026
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractHintUI$UIHandler;

    if-eqz p1, :cond_7

    const/16 p2, 0x6b

    const-wide/16 v0, 0xbb8

    .line 1027
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1028
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractHintUI$UIHandler;

    const/16 p1, 0x6c

    const-wide/16 p2, 0x2328

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_7
    return-void
.end method

.method private startAlwaysHintAnimator(Landroid/animation/Animator;)V
    .locals 0

    .line 912
    invoke-virtual {p1}, Landroid/animation/Animator;->end()V

    .line 913
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAlwaysHintText:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 914
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method private startAutoHideHintAnimator(Landroid/animation/Animator;)V
    .locals 0

    .line 918
    invoke-virtual {p1}, Landroid/animation/Animator;->end()V

    .line 919
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAutoHideHintText:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 920
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method private startTwinkleGuideAnim()V
    .locals 7

    .line 1049
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractHintUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[startTwinkleGuideAnim] ++"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1051
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mSuperNightScaleAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_0

    .line 1052
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 1053
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mSuperNightScaleAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1055
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleSlideAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_1

    .line 1056
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 1057
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleSlideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1060
    :cond_1
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsAutoInfoShowing:Z

    if-eqz v1, :cond_2

    .line 1061
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->hideAutoHideHintView()V

    .line 1064
    :cond_2
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsTwinkleGuideShowing:Z

    if-nez v1, :cond_6

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsTransparent:Z

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    .line 1068
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsTwinkleGuideShowing:Z

    .line 1069
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleGuideRoot:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1070
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleGuideRoot:Landroid/view/View;

    iget-object v4, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x42400000    # 48.0f

    invoke-static {v4, v5}, Lcom/transsion/camera/utils/UIUtils;->dp2Px(Landroid/content/res/Resources;F)F

    move-result v4

    neg-float v4, v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 1071
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleGuideRoot:Landroid/view/View;

    const/4 v4, 0x2

    new-array v4, v4, [F

    iget-object v6, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/transsion/camera/utils/UIUtils;->dp2Px(Landroid/content/res/Resources;F)F

    move-result v5

    neg-float v5, v5

    aput v5, v4, v3

    const/4 v5, 0x0

    aput v5, v4, v1

    const-string v5, "translationY"

    invoke-static {v2, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 1073
    iget-object v4, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleSlideAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v4, :cond_4

    .line 1074
    iget-object v5, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1075
    iget-object v4, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleSlideAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v5, v1, [Landroid/animation/Animator;

    aput-object v2, v5, v3

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1076
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleSlideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 1078
    :cond_4
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleGuideView:Lcom/opensource/svgaplayer/SVGAImageView;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/opensource/svgaplayer/SVGAImageView;->isAnimating()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1079
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleGuideView:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {v2}, Lcom/opensource/svgaplayer/SVGAImageView;->startAnimation()V

    .line 1082
    :cond_5
    invoke-direct {p0, v1, v3}, Lcom/transsion/camera/app/ui/AbstractHintUI;->doAsdHintSlideAnim(ZZ)V

    const-string p0, "[startSuperNightGuideAnim] --"

    .line 1083
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_6
    :goto_0
    return-void
.end method

.method private stopTwinkleGuideAnim(Z)V
    .locals 4

    .line 1087
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractHintUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[stopTwinkleGuideAnim] ++ mIsTwinkleGuideShowing:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsTwinkleGuideShowing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1088
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsTwinkleGuideShowing:Z

    if-nez v1, :cond_0

    return-void

    .line 1092
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdShrinkAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_1

    .line 1093
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 1094
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdShrinkAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1096
    :cond_1
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleSlideAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_2

    .line 1097
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 1098
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleSlideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1100
    :cond_2
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleGuideView:Lcom/opensource/svgaplayer/SVGAImageView;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/opensource/svgaplayer/SVGAImageView;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1101
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleGuideView:Lcom/opensource/svgaplayer/SVGAImageView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/opensource/svgaplayer/SVGAImageView;->stopAnimation(Z)V

    .line 1103
    :cond_3
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mSuperNightScaleAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1104
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleGuideRoot:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    const/4 v1, 0x0

    .line 1106
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsTwinkleGuideShowing:Z

    .line 1108
    invoke-direct {p0, v1, p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->doAsdHintSlideAnim(ZZ)V

    .line 1109
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p1

    const-string v2, "key_twinkle_guild"

    const-string v3, "on"

    invoke-virtual {p0, v2, v3, p1, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string p0, "[stopTwinkleGuideAnim] --"

    .line 1110
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private updateCommonHintRotateOrientation(IZ)I
    .locals 6

    .line 1250
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractHintUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateCommonHintRotateOrientation], orientation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , mScreenFormType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mScreenFormType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0xb4

    if-eq p1, v2, :cond_3

    .line 1252
    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTextViewIsRotate:Z

    if-eqz v2, :cond_0

    .line 1253
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTextViewIsRotate:Z

    .line 1254
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCommonHintRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_0

    .line 1255
    iget-object v4, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCommonHintRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setRotation(F)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1258
    :cond_0
    iget v2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mScreenFormType:I

    if-ne v2, v0, :cond_2

    .line 1259
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsVideoRecording:Z

    if-eqz v0, :cond_1

    .line 1260
    iget p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mRecordingOrientation:I

    .line 1262
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCommonHintRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    goto :goto_2

    .line 1264
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCommonHintRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v0, v1, p2}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    goto :goto_2

    .line 1267
    :cond_3
    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTextViewIsRotate:Z

    if-nez v2, :cond_5

    .line 1268
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCommonHintRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    move v3, v1

    :goto_1
    if-ge v3, v2, :cond_4

    .line 1269
    iget-object v4, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCommonHintRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const/high16 v5, 0x43340000    # 180.0f

    invoke-virtual {v4, v5}, Landroid/view/View;->setRotation(F)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1271
    :cond_4
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTextViewIsRotate:Z

    .line 1273
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCommonHintRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v0, v1, p2}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 1275
    :goto_2
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mProgressGroupLayout:Landroid/widget/LinearLayout;

    neg-int p2, p1

    int-to-float p2, p2

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setRotation(F)V

    return p1
.end method

.method private updateHintLayout()V
    .locals 3

    .line 286
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAlwaysHintText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f07028a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 287
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAutoHideHintText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f07028d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 288
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mScreenFormType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 289
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAlwaysHintText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f070289

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 290
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAutoHideHintText:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f07028c

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 292
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAlwaysHintText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f070288

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 293
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAutoHideHintText:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f07028b

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 295
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mProgressHintText:Landroid/widget/TextView;

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f07005d

    .line 296
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    .line 295
    invoke-virtual {v0, v1, p0}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_2
    :goto_0
    return-void
.end method

.method private updateHintRootPaddingInfo(II)V
    .locals 5

    .line 1197
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    if-nez v0, :cond_0

    return-void

    .line 1200
    :cond_0
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenWidth()I

    move-result v0

    .line 1201
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenHeight()I

    move-result v1

    if-ge v0, v1, :cond_2

    mul-int/lit8 v2, v0, 0x4

    .line 1206
    div-int/lit8 v2, v2, 0x3

    if-le v2, v1, :cond_1

    mul-int/lit8 v1, v1, 0x3

    .line 1209
    div-int/lit8 v1, v1, 0x4

    goto :goto_0

    :cond_1
    move v1, v0

    goto :goto_0

    :cond_2
    mul-int/lit8 v1, v1, 0x3

    .line 1213
    div-int/lit8 v1, v1, 0x4

    :goto_0
    const/4 v2, 0x0

    .line 1215
    iput v2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mPaddingTop:I

    .line 1216
    iput v2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mPaddingLeft:I

    .line 1217
    iput v2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mPaddingRight:I

    .line 1218
    iput v2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mPaddingBottom:I

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-ne p2, v3, :cond_5

    .line 1220
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0702a0

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mPaddingTop:I

    sub-int/2addr v0, v1

    .line 1221
    div-int/2addr v0, v4

    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0702ab

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    sub-int p2, v0, p2

    iput p2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mPaddingLeft:I

    .line 1222
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    sub-int/2addr v0, p2

    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mPaddingRight:I

    .line 1223
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mPaddingBottom:I

    .line 1224
    iget-boolean p2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsVideoRecording:Z

    if-nez p2, :cond_3

    return-void

    :cond_3
    const/16 p2, 0x5a

    if-eq p1, p2, :cond_4

    const/16 p2, 0x10e

    if-eq p1, p2, :cond_4

    .line 1237
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    const p2, 0x7f07029e

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mPaddingTop:I

    .line 1238
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mPaddingBottom:I

    goto :goto_1

    .line 1230
    :cond_4
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    const p2, 0x7f07029f

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mPaddingLeft:I

    .line 1231
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mPaddingRight:I

    goto :goto_1

    :cond_5
    if-ne p2, v4, :cond_6

    .line 1242
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    const p2, 0x7f07029d

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mPaddingTop:I

    .line 1243
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/ScreenManager;->getColumnPreviewStartMargin()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mPaddingLeft:I

    .line 1244
    iput v2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mPaddingRight:I

    .line 1245
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/ScreenManager;->getModePlusBottomBarHeight()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mPaddingBottom:I

    :cond_6
    :goto_1
    return-void
.end method

.method private updateProgressBarLayoutForHover(IZI)V
    .locals 4

    .line 1457
    iget-object p3, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mProgressBarHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-static {p3}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    .line 1461
    iget-object p3, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mProgressGroupLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/widget/FrameLayout$LayoutParams;

    .line 1463
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mProgressHintRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v0

    const/16 v1, 0x11

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    .line 1465
    iput v2, p3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1466
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    const v0, 0x7f070295

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_1

    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 1468
    iput v2, p3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1469
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    const v0, 0x7f070294

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_1

    .line 1471
    :cond_1
    iput v1, p3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0

    .line 1475
    :cond_2
    iput v1, p3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :goto_0
    move p1, v3

    .line 1479
    :goto_1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mProgressHintRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    const/4 p2, 0x2

    new-array p2, p2, [I

    aput v3, p2, v3

    aput p1, p2, v2

    .line 1480
    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mProgressBarHoverAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x190

    .line 1481
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1482
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mProgressBarHoverAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Lcom/transsion/camera/app/ui/AbstractHintUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1483
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mProgressBarHoverAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/transsion/camera/app/ui/AbstractHintUI$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, p3}, Lcom/transsion/camera/app/ui/AbstractHintUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/ui/AbstractHintUI;Landroid/widget/FrameLayout$LayoutParams;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1487
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mProgressBarHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_2

    .line 1489
    :cond_3
    iput p1, p3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1490
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mProgressGroupLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_2
    return-void
.end method

.method private updateSpecifiedMode(Ljava/lang/String;)V
    .locals 1

    .line 509
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mModePickerControl:Lcom/transsion/camera/app/common/IAppUIControl$IModePickerControl;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 510
    invoke-interface {p0, p1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$IModePickerControl;->updateSpecifiedMode(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected createFloatValueAnimator(FFILandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ValueAnimator;
    .locals 1

    const/4 p0, 0x2

    new-array p0, p0, [F

    const/4 v0, 0x0

    aput p1, p0, v0

    const/4 p1, 0x1

    aput p2, p0, p1

    .line 971
    invoke-static {p0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p0

    int-to-long p1, p3

    invoke-virtual {p0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p0

    .line 972
    invoke-virtual {p0, p4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p0
.end method

.method protected createValueAnimator(IIILandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ValueAnimator;
    .locals 1

    const/4 p0, 0x2

    new-array p0, p0, [I

    const/4 v0, 0x0

    aput p1, p0, v0

    const/4 p1, 0x1

    aput p2, p0, p1

    .line 965
    invoke-static {p0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p0

    int-to-long p1, p3

    invoke-virtual {p0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p0

    .line 966
    invoke-virtual {p0, p4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p0
.end method

.method public endHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V
    .locals 0

    .line 413
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mEndHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    return-void
.end method

.method public fadeInHint()V
    .locals 3

    .line 598
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractHintUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[fadeInHint]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 599
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsTransparent:Z

    .line 600
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAlwaysHintFadeOutAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 601
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAutoHintFadeOutAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 602
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdHintFadeOutAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 603
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAlwaysHintFadeInAnimator:Landroid/animation/Animator;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->startAlwaysHintAnimator(Landroid/animation/Animator;)V

    .line 604
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAutoHintFadeInAnimator:Landroid/animation/Animator;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->startAutoHideHintAnimator(Landroid/animation/Animator;)V

    .line 605
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdHintFadeInAnimator:Landroid/animation/Animator;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->startAsdHintAnimator(Landroid/animation/Animator;)V

    .line 606
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAlwaysInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    if-eqz v0, :cond_0

    .line 607
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->getTwinkleGuideMode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleGuideMode:Ljava/lang/String;

    .line 608
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAlwaysInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->isTwinkleEnabled()Z

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAlwaysInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->isSuperNightGuideSupport()Z

    move-result v1

    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAlwaysInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/ui/HintInfo;->isMagicSkyGuideSupport()Z

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/transsion/camera/app/ui/AbstractHintUI;->showTwinkleGuide(ZZZ)V

    :cond_0
    return-void
.end method

.method public fadeOutHint()V
    .locals 2

    .line 614
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractHintUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[fadeOutHint]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 615
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsTransparent:Z

    .line 616
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAlwaysHintFadeInAnimator:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->end()V

    .line 617
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAutoHintFadeInAnimator:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->end()V

    .line 618
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdHintFadeInAnimator:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->end()V

    .line 619
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAlwaysHintFadeOutAnimator:Landroid/animation/Animator;

    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->startAlwaysHintAnimator(Landroid/animation/Animator;)V

    .line 620
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAutoHintFadeOutAnimator:Landroid/animation/Animator;

    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->startAutoHideHintAnimator(Landroid/animation/Animator;)V

    .line 621
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdHintFadeOutAnimator:Landroid/animation/Animator;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->startAsdHintAnimator(Landroid/animation/Animator;)V

    .line 622
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->stopTwinkleGuideAnim(Z)V

    return-void
.end method

.method abstract getAsdHintRootLayout()Landroid/view/ViewGroup;
.end method

.method public getCurrentAsdHint()Lcom/transsion/camera/app/common/ui/HintInfo;
    .locals 0

    .line 437
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAsdInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    return-object p0
.end method

.method abstract getExpandInitValue()[I
.end method

.method public getHintState()Z
    .locals 0

    .line 704
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mHintShown:Z

    return p0
.end method

.method abstract getOverallValue()[I
.end method

.method abstract getShrinkTargetValue()[I
.end method

.method public hideAllHint()V
    .locals 2

    .line 491
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractHintUI$UIHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 492
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractHintUI$UIHandler;

    const/16 v0, 0x6d

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method abstract hideAsdHintView()V
.end method

.method protected hideAsdHintViewWithAnim()V
    .locals 2

    .line 1135
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mPreviousExpandTime:J

    .line 1136
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdHideAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdExpandAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 1137
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdShrinkAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_3

    .line 1138
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    .line 1139
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsNeedWaitScale:Z

    return-void

    .line 1142
    :cond_3
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->stopAsdAnimatorSet()V

    .line 1143
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->initAsdHieAnimator()V

    .line 1144
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdHideAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdHideListener:Lcom/transsion/camera/app/ui/AbstractHintUI$HideAnimationEndListener;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1145
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V
    .locals 2

    .line 397
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getType()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 406
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractHintUI$UIHandler;

    const/16 v0, 0x66

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 403
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractHintUI$UIHandler;

    const/16 v0, 0x65

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 399
    :cond_2
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->removeDynamicAlwaysHintShowMessage(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 400
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractHintUI$UIHandler;

    const/16 v0, 0x67

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void
.end method

.method public inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const v0, 0x7f0c00c4

    const/4 v1, 0x1

    .line 224
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mParentView:Landroid/view/View;

    const p2, 0x7f090204

    .line 225
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mRootView:Landroid/view/ViewGroup;

    .line 226
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mParentView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 227
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mParentView:Landroid/view/View;

    const v0, 0x7f090089

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdAlgorithResultLayout:Landroid/view/ViewGroup;

    .line 228
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mParentView:Landroid/view/View;

    const v0, 0x7f09008c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdEffectLayout:Landroid/view/ViewGroup;

    .line 229
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mParentView:Landroid/view/View;

    const v0, 0x7f090462

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleGuideRoot:Landroid/view/View;

    const v0, 0x7f0904df

    .line 230
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleGuideImageView:Landroid/widget/ImageView;

    .line 231
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleGuideRoot:Landroid/view/View;

    const v0, 0x7f0904e0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleGuideTextView:Landroid/widget/TextView;

    .line 232
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleGuideRoot:Landroid/view/View;

    new-instance v0, Lcom/transsion/camera/app/ui/AbstractHintUI$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/AbstractHintUI$1;-><init>(Lcom/transsion/camera/app/ui/AbstractHintUI;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mRootView:Landroid/view/ViewGroup;

    const v0, 0x7f0904de

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/opensource/svgaplayer/SVGAImageView;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleGuideView:Lcom/opensource/svgaplayer/SVGAImageView;

    const p2, 0x7f020010

    .line 253
    invoke-static {p1, p2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAlwaysHintFadeOutAnimator:Landroid/animation/Animator;

    const v0, 0x7f02000f

    .line 254
    invoke-static {p1, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAlwaysHintFadeInAnimator:Landroid/animation/Animator;

    .line 255
    invoke-static {p1, p2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAutoHintFadeOutAnimator:Landroid/animation/Animator;

    .line 256
    invoke-static {p1, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAutoHintFadeInAnimator:Landroid/animation/Animator;

    .line 257
    invoke-static {p1, p2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdHintFadeOutAnimator:Landroid/animation/Animator;

    .line 258
    invoke-static {p1, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdHintFadeInAnimator:Landroid/animation/Animator;

    const p2, 0x7f020012

    .line 259
    invoke-static {p1, p2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdHintSlideOutAnimator:Landroid/animation/Animator;

    const p2, 0x7f020011

    .line 260
    invoke-static {p1, p2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdHintSlideInAnimator:Landroid/animation/Animator;

    .line 261
    new-instance p2, Landroid/view/animation/PathInterpolator;

    const/high16 v0, 0x3e800000    # 0.25f

    const v1, 0x3dcccccd    # 0.1f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p2, v0, v1, v0, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 262
    new-instance p2, Lcom/transsion/camera/app/ui/AbstractHintUI$ScaleAnimationEndListener;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/transsion/camera/app/ui/AbstractHintUI$ScaleAnimationEndListener;-><init>(Lcom/transsion/camera/app/ui/AbstractHintUI;Lcom/transsion/camera/app/ui/AbstractHintUI$1;)V

    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mScaleListener:Lcom/transsion/camera/app/ui/AbstractHintUI$ScaleAnimationEndListener;

    .line 263
    new-instance p2, Lcom/transsion/camera/app/ui/AbstractHintUI$HideAnimationEndListener;

    invoke-direct {p2, p0, v0}, Lcom/transsion/camera/app/ui/AbstractHintUI$HideAnimationEndListener;-><init>(Lcom/transsion/camera/app/ui/AbstractHintUI;Lcom/transsion/camera/app/ui/AbstractHintUI$1;)V

    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdHideListener:Lcom/transsion/camera/app/ui/AbstractHintUI$HideAnimationEndListener;

    .line 264
    new-instance p2, Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-direct {p2, p1}, Lcom/transsion/camera/app/common/storage/DataStore;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 265
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mRootView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method abstract initAsdHieAnimator()V
.end method

.method abstract initAsdHieAnimatorByInfo(Lcom/transsion/camera/app/common/ui/HintInfo;)V
.end method

.method abstract initExpandAnimator([I[ILcom/transsion/camera/app/common/ui/HintInfo;)V
.end method

.method abstract initShrinkAnimator([I[ILcom/transsion/camera/app/common/ui/HintInfo;)V
.end method

.method public notifyCameraOperateActionToUI(I)V
    .locals 3

    const/16 v0, 0xf

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_1

    const/16 v0, 0x10

    if-eq p1, v0, :cond_0

    const/16 v0, 0x6d

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 467
    :cond_0
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsVideoRecording:Z

    .line 468
    iput v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mRecordingOrientation:I

    .line 469
    iget p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentOrientation:I

    invoke-virtual {p0, p1, v2}, Lcom/transsion/camera/app/ui/AbstractHintUI;->onOrientationChanged(IZ)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 459
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsVideoRecording:Z

    .line 460
    iget p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mRecordingOrientation:I

    if-ne p1, v1, :cond_2

    .line 461
    iget p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentOrientation:I

    iput p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mRecordingOrientation:I

    .line 463
    :cond_2
    iget p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mScreenFormType:I

    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentOrientation:I

    invoke-virtual {p0, p1, v2, v0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->updateProgressBarLayout(IZI)V

    :goto_0
    return-void
.end method

.method public onOrientationChanged(IZ)V
    .locals 5

    .line 638
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCommonHintRoot:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCommonHintRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mProgressGroupLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x5

    .line 642
    iget v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mScreenFormType:I

    const/16 v2, 0x10e

    const/16 v3, 0x5a

    if-ne v0, v1, :cond_2

    if-eq p1, v3, :cond_1

    if-ne p1, v2, :cond_2

    :cond_1
    return-void

    .line 647
    :cond_2
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractHintUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onOrientationChanged], orientation :"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " , mTransOrientation:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTransOrientation:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 648
    iput p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentOrientation:I

    .line 649
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCommonHintRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 650
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTransOrientation:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentOrientation:I

    if-eq v0, v3, :cond_3

    if-ne v0, v2, :cond_4

    .line 652
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCommonHintRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iget v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mExtraTrans:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    goto :goto_0

    .line 654
    :cond_4
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCommonHintRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 658
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractHintUI;->updateCommonHintRotateOrientation(IZ)I

    move-result p1

    .line 659
    iget p2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mScreenFormType:I

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0, p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->updateProgressBarLayout(IZI)V

    :cond_5
    :goto_1
    return-void
.end method

.method public onRelativePreviewRectChanged(Landroid/graphics/Rect;)V
    .locals 3

    .line 627
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 628
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractHintUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRelativePreviewRectChanged, preview view rect:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", preview view width:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mPreviewRect:Landroid/graphics/Rect;

    .line 629
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", height:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 628
    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 630
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    return-void

    .line 633
    :cond_0
    iget p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mScreenFormType:I

    const/4 v0, 0x0

    iget v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentOrientation:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->updateProgressBarLayout(IZI)V

    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .locals 3

    .line 664
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractHintUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onScreenFormChanged] :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mScreenFormType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 665
    iput p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mScreenFormType:I

    .line 666
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsAutoInfoShowing:Z

    if-eqz v0, :cond_0

    .line 667
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAutoHideInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p0, v0, p2}, Lcom/transsion/camera/app/ui/AbstractHintUI;->updateLayout(Lcom/transsion/camera/app/common/ui/HintInfo;Z)V

    goto :goto_0

    .line 669
    :cond_0
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/ui/AbstractHintUI;->updateLayout(Z)V

    .line 671
    :goto_0
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentOrientation:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 673
    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsVideoRecording:Z

    if-eqz v2, :cond_1

    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mRecordingOrientation:I

    .line 675
    :cond_1
    invoke-direct {p0, v0, p2}, Lcom/transsion/camera/app/ui/AbstractHintUI;->updateCommonHintRotateOrientation(IZ)I

    .line 676
    invoke-virtual {p0, p1, v1, v0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->updateProgressBarLayout(IZI)V

    return-void
.end method

.method public registerHintStateListener(Lcom/transsion/camera/app/common/IAppUIControl$HintStateChangeListener;)V
    .locals 0

    .line 694
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mHintStateChangeListener:Lcom/transsion/camera/app/common/IAppUIControl$HintStateChangeListener;

    return-void
.end method

.method public resetEndHint()V
    .locals 1

    const/4 v0, 0x0

    .line 481
    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mEndHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    return-void
.end method

.method public resetTwinkleGuide()V
    .locals 2

    .line 442
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractHintUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[resetTwinkleGuide]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 443
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->removeTwinkleGuideMessages(Z)V

    return-void
.end method

.method public resume()V
    .locals 1

    const/4 v0, 0x0

    .line 302
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsVideoRecording:Z

    const/4 v0, -0x1

    .line 303
    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mRecordingOrientation:I

    const/4 v0, 0x1

    .line 304
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mEnableUI:Z

    return-void
.end method

.method public setEnableHintUI(Z)V
    .locals 0

    .line 486
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mEnableUI:Z

    return-void
.end method

.method public setHintUITrans(II)V
    .locals 5

    .line 418
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mScreenFormType:I

    const/16 v1, 0x10e

    const/16 v2, 0x5a

    const/4 v3, 0x5

    if-ne v3, v0, :cond_1

    if-eq p1, v2, :cond_0

    if-ne p1, v1, :cond_1

    :cond_0
    return-void

    .line 423
    :cond_1
    iput p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTransOrientation:I

    .line 424
    iput p2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mExtraTrans:I

    const/16 p2, 0x10

    const-wide/16 v3, 0xc8

    if-ne p1, p2, :cond_3

    .line 425
    iget p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentOrientation:I

    if-eq p1, v2, :cond_2

    if-ne p1, v1, :cond_3

    .line 427
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCommonHintRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget p2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mExtraTrans:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 428
    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 430
    :cond_3
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCommonHintRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 431
    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_0
    return-void
.end method

.method public setModePickerControl(Lcom/transsion/camera/app/common/IAppUIControl$IModePickerControl;)V
    .locals 0

    .line 505
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mModePickerControl:Lcom/transsion/camera/app/common/IAppUIControl$IModePickerControl;

    return-void
.end method

.method public setRecorderOrientation(I)V
    .locals 0

    .line 476
    iput p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mRecordingOrientation:I

    return-void
.end method

.method public setRecordingState(Z)V
    .locals 1

    .line 1280
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsRecording:Z

    .line 1281
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAutoHideInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->updateLayout(Lcom/transsion/camera/app/common/ui/HintInfo;Z)V

    return-void
.end method

.method public setTwinkleGuideAvailable(Z)V
    .locals 3

    .line 448
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractHintUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setSuperNightGuideAvailable] , isAvailable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 449
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsTwinkleGuideAvailable:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 451
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->removeTwinkleGuideMessages(Z)V

    :cond_0
    return-void
.end method

.method abstract setupAsdHintViews(Landroid/view/ViewGroup;)V
.end method

.method public setupViews()V
    .locals 3

    .line 270
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    .line 271
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f0900f6

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCommonHintRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 272
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f0900f5

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCommonHintRoot:Landroid/widget/FrameLayout;

    .line 273
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f09005b

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAlwaysHintText:Landroid/widget/TextView;

    .line 274
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f090095

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAutoHideHintText:Landroid/widget/TextView;

    .line 275
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f09039b

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mProgressGroupLayout:Landroid/widget/LinearLayout;

    .line 276
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f0903a2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mProgressHintRoot:Landroid/widget/FrameLayout;

    .line 277
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f090202

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/opensource/svgaplayer/SVGAImageView;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mProgressLoadingView:Lcom/opensource/svgaplayer/SVGAImageView;

    .line 278
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f090201

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mProgressBarView:Landroid/view/View;

    .line 279
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f090203

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mProgressHintText:Landroid/widget/TextView;

    .line 280
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->setupAsdHintViews(Landroid/view/ViewGroup;)V

    .line 281
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->updateHintLayout()V

    .line 282
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mScreenFormType:I

    iget v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentOrientation:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->updateProgressBarLayout(IZI)V

    return-void
.end method

.method abstract showAsdHintView(Lcom/transsion/camera/app/common/ui/HintInfo;)V
.end method

.method public showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V
    .locals 2

    .line 309
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAlwaysInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->getPriority()I

    move-result v0

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getPriority()I

    move-result v1

    if-le v0, v1, :cond_0

    return-void

    .line 312
    :cond_0
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getType()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 321
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractHintUI$UIHandler;

    const/16 v0, 0x68

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 317
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractHintUI$UIHandler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 318
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractHintUI$UIHandler;

    const/16 v0, 0x64

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 314
    :cond_3
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractHintUI$UIHandler;

    const/16 v0, 0x69

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void
.end method

.method abstract startAsdHintAnimator(Landroid/animation/Animator;)V
.end method

.method protected startAsdScaleAnimator(Lcom/transsion/camera/app/common/ui/HintInfo;)V
    .locals 2

    .line 925
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdExpandAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 926
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 927
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdExpandAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 929
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdShrinkAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 930
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 931
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdShrinkAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 933
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->getAsdHintRootLayout()Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 934
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsTransparent:Z

    if-nez v0, :cond_2

    .line 935
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->getAsdHintRootLayout()Landroid/view/ViewGroup;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 937
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAsdInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAsdInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAsdInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 938
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAsdInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAsdInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 939
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAsdInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    .line 940
    :cond_5
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->getCurrentAsdHint()Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 941
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->updateEffectLayout(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 943
    :cond_6
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->getCurrentAsdHint()Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 944
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->updateAlgoritLayout(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 946
    :cond_7
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->getExpandInitValue()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->getOverallValue()[I

    move-result-object v1

    invoke-virtual {p0, v0, v1, p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->initExpandAnimator([I[ILcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 947
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->getOverallValue()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->getShrinkTargetValue()[I

    move-result-object v1

    invoke-virtual {p0, v0, v1, p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->initShrinkAnimator([I[ILcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 948
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdExpandAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mScaleListener:Lcom/transsion/camera/app/ui/AbstractHintUI$ScaleAnimationEndListener;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 949
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdShrinkAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mScaleListener:Lcom/transsion/camera/app/ui/AbstractHintUI$ScaleAnimationEndListener;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 950
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdExpandAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 951
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdShrinkAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 952
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAsdInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 953
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAsdInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 954
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAsdInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setOtherDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 955
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAsdInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setOtherMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 957
    :cond_8
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->initAsdHieAnimatorByInfo(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    const/4 p1, 0x1

    .line 958
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mHideAsdTemp:Z

    .line 959
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdHideAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdHideListener:Lcom/transsion/camera/app/ui/AbstractHintUI$HideAnimationEndListener;

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 960
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    :goto_0
    return-void
.end method

.method protected stopAsdAnimatorSet()V
    .locals 2

    .line 977
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdExpandAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 978
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdExpandAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 979
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdExpandAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 981
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdShrinkAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 982
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdShrinkAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 983
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdShrinkAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 985
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdHideAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 986
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 987
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 989
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAsdInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 990
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAsdInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 991
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAsdInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setOtherMessage(Ljava/lang/String;)V

    .line 992
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAsdInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setOtherDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public unInit()V
    .locals 3

    .line 572
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractHintUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "unInit"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 573
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractHintUI$UIHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 574
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAlwaysInfoStack:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 575
    iput-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAlwaysInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 576
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAsdInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 577
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAsdInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 578
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAsdInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setOtherMessage(Ljava/lang/String;)V

    .line 579
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAsdInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setOtherDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 580
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mProgressLoadingView:Lcom/opensource/svgaplayer/SVGAImageView;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 581
    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGAImageView;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 582
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mProgressLoadingView:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {v0, v2}, Lcom/opensource/svgaplayer/SVGAImageView;->stopAnimation(Z)V

    .line 584
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mProgressLoadingView:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGAImageView;->clear()V

    .line 585
    iput-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mProgressLoadingView:Lcom/opensource/svgaplayer/SVGAImageView;

    .line 587
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleGuideView:Lcom/opensource/svgaplayer/SVGAImageView;

    if-eqz v0, :cond_3

    .line 588
    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGAImageView;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 589
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleGuideView:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {v0, v2}, Lcom/opensource/svgaplayer/SVGAImageView;->stopAnimation(Z)V

    .line 591
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleGuideView:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGAImageView;->clear()V

    .line 592
    iput-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleGuideView:Lcom/opensource/svgaplayer/SVGAImageView;

    :cond_3
    return-void
.end method

.method public unRegisterHintStateListener()V
    .locals 1

    const/4 v0, 0x0

    .line 699
    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mHintStateChangeListener:Lcom/transsion/camera/app/common/IAppUIControl$HintStateChangeListener;

    return-void
.end method

.method abstract updateAlgoritLayout(Lcom/transsion/camera/app/common/ui/HintInfo;)V
.end method

.method abstract updateEffectLayout(Lcom/transsion/camera/app/common/ui/HintInfo;)V
.end method

.method protected updateHintState(Z)V
    .locals 0

    .line 708
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mHintShown:Z

    .line 709
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mHintStateChangeListener:Lcom/transsion/camera/app/common/IAppUIControl$HintStateChangeListener;

    if-eqz p0, :cond_0

    .line 710
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$HintStateChangeListener;->onHintStateChange(Z)V

    :cond_0
    return-void
.end method

.method public updateLayout(Lcom/transsion/camera/app/common/ui/HintInfo;Z)V
    .locals 3

    .line 1364
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsAutoInfoShowing:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAutoHideInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    if-nez v0, :cond_0

    goto :goto_1

    .line 1369
    :cond_0
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getFeedbackType()I

    move-result p1

    const/16 v0, 0x67

    if-ne p1, v0, :cond_1

    iget p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mScreenFormType:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 1371
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCommonHintRoot:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getPaddingStart()I

    move-result p1

    .line 1372
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCommonHintRoot:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getPaddingEnd()I

    move-result p2

    .line 1373
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCommonHintRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v0

    .line 1374
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f070297

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1375
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCommonHintRoot:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1, v1, p2, v0}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    goto :goto_0

    .line 1377
    :cond_1
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/ui/AbstractHintUI;->updateLayout(Z)V

    :goto_0
    return-void

    .line 1365
    :cond_2
    :goto_1
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/ui/AbstractHintUI;->updateLayout(Z)V

    return-void
.end method

.method public updateLayout(Z)V
    .locals 18

    move-object/from16 v0, p0

    .line 1285
    iget-object v1, v0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v1}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    .line 1286
    iget-object v1, v0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCommonHintRoot:Landroid/widget/FrameLayout;

    if-nez v1, :cond_0

    return-void

    .line 1289
    :cond_0
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getPaddingStart()I

    move-result v1

    .line 1290
    iget-object v2, v0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCommonHintRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getPaddingEnd()I

    move-result v2

    .line 1291
    iget-object v3, v0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCommonHintRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v3

    .line 1293
    iget-object v4, v0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCommonHintRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v4

    .line 1294
    iget-object v5, v0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f070297

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ne v4, v5, :cond_1

    move v5, v6

    goto :goto_0

    :cond_1
    move v5, v7

    .line 1300
    :goto_0
    iget v8, v0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mScreenFormType:I

    const/4 v9, 0x3

    const/high16 v10, 0x3f800000    # 1.0f

    if-ne v8, v9, :cond_3

    .line 1301
    iget-boolean v8, v0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsRecording:Z

    if-eqz v8, :cond_2

    .line 1302
    iget-object v8, v0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    const v11, 0x7f070298

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    goto :goto_2

    .line 1304
    :cond_2
    iget-object v8, v0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    const v11, 0x7f070296

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    goto :goto_2

    .line 1307
    :cond_3
    iget-object v8, v0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v10

    iget-object v11, v0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v8, v11

    float-to-double v11, v8

    .line 1308
    iget-object v8, v0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v8}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenWidth()I

    move-result v8

    iget-object v13, v0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v13}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenHeight()I

    move-result v13

    invoke-static {v8, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 1309
    iget-object v8, v0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v8}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenWidth()I

    move-result v8

    iget-object v14, v0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v14}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenHeight()I

    move-result v14

    invoke-static {v8, v14}, Ljava/lang/Math;->min(II)I

    move-result v8

    int-to-double v14, v8

    mul-double/2addr v14, v11

    double-to-int v8, v14

    .line 1311
    iget-object v14, v0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v14}, Lcom/transsion/camera/app/ui/ScreenManager;->getTopBarHeight()I

    move-result v14

    iget-object v15, v0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    .line 1312
    invoke-virtual {v15}, Lcom/transsion/camera/app/ui/ScreenManager;->getModePlusBottomBarHeight()I

    move-result v15

    move/from16 v16, v8

    .line 1311
    invoke-static/range {v11 .. v16}, Lcom/transsion/camera/utils/CameraUtil;->getTopMargin(DIIII)I

    move-result v8

    .line 1314
    iget v11, v0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mScreenFormType:I

    if-nez v11, :cond_4

    .line 1315
    iget-object v11, v0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    const v12, 0x7f070299

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    goto :goto_1

    :cond_4
    move v11, v7

    .line 1317
    :goto_1
    iget-object v12, v0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v12}, Lcom/transsion/camera/app/ui/ScreenManager;->getTopBarHeight()I

    move-result v12

    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/2addr v8, v11

    :goto_2
    if-eqz p1, :cond_6

    const/4 v13, 0x2

    if-eqz v5, :cond_5

    const/4 v5, 0x0

    .line 1322
    invoke-static {v5, v10}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v14

    const/high16 v15, 0x3f000000    # 0.5f

    .line 1323
    invoke-static {v15, v5}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v16

    .line 1324
    invoke-static {v10, v10}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v17

    new-array v11, v9, [Landroid/animation/Keyframe;

    aput-object v14, v11, v7

    aput-object v16, v11, v6

    aput-object v17, v11, v13

    const-string v12, "alpha"

    .line 1325
    invoke-static {v12, v11}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    .line 1327
    invoke-static {v5, v4}, Landroid/animation/Keyframe;->ofInt(FI)Landroid/animation/Keyframe;

    move-result-object v5

    .line 1328
    invoke-static {v15, v4}, Landroid/animation/Keyframe;->ofInt(FI)Landroid/animation/Keyframe;

    move-result-object v4

    .line 1329
    invoke-static {v15, v8}, Landroid/animation/Keyframe;->ofInt(FI)Landroid/animation/Keyframe;

    move-result-object v12

    .line 1330
    invoke-static {v10, v8}, Landroid/animation/Keyframe;->ofInt(FI)Landroid/animation/Keyframe;

    move-result-object v8

    const/4 v10, 0x4

    new-array v10, v10, [Landroid/animation/Keyframe;

    aput-object v5, v10, v7

    aput-object v4, v10, v6

    aput-object v12, v10, v13

    aput-object v8, v10, v9

    const-string v4, "padding"

    .line 1331
    invoke-static {v4, v10}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    new-array v5, v13, [Landroid/animation/PropertyValuesHolder;

    aput-object v11, v5, v7

    aput-object v4, v5, v6

    .line 1332
    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v4

    iput-object v4, v0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v5, 0x190

    .line 1333
    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1334
    iget-object v4, v0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    sget-object v5, Lcom/transsion/camera/app/ui/AbstractHintUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1335
    iget-object v4, v0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/transsion/camera/app/ui/AbstractHintUI$$ExternalSyntheticLambda2;

    invoke-direct {v5, v0, v1, v2, v3}, Lcom/transsion/camera/app/ui/AbstractHintUI$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/app/ui/AbstractHintUI;III)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1341
    iget-object v1, v0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/transsion/camera/app/ui/AbstractHintUI$2;

    invoke-direct {v2, v0}, Lcom/transsion/camera/app/ui/AbstractHintUI$2;-><init>(Lcom/transsion/camera/app/ui/AbstractHintUI;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_3

    :cond_5
    new-array v5, v13, [I

    aput v4, v5, v7

    aput v8, v5, v6

    .line 1349
    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v4

    iput-object v4, v0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v5, 0x190

    .line 1350
    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1351
    iget-object v4, v0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    sget-object v5, Lcom/transsion/camera/app/ui/AbstractHintUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1352
    iget-object v4, v0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/transsion/camera/app/ui/AbstractHintUI$$ExternalSyntheticLambda3;

    invoke-direct {v5, v0, v1, v2, v3}, Lcom/transsion/camera/app/ui/AbstractHintUI$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/app/ui/AbstractHintUI;III)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1357
    :goto_3
    iget-object v0, v0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_4

    .line 1359
    :cond_6
    iget-object v0, v0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCommonHintRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v8, v2, v3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    :goto_4
    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .locals 2

    .line 681
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mPreviewRect:Landroid/graphics/Rect;

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/CameraUtil;->isSameAspectRatio(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 682
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    if-eqz v0, :cond_1

    .line 684
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsAutoInfoShowing:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 685
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAutoHideInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->updateLayout(Lcom/transsion/camera/app/common/ui/HintInfo;Z)V

    goto :goto_0

    .line 687
    :cond_0
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->updateLayout(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateProgressBarLayout(IZI)V
    .locals 8

    .line 1382
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mProgressGroupLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    return-void

    .line 1385
    :cond_0
    invoke-direct {p0, p3, p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->updateHintRootPaddingInfo(II)V

    .line 1386
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCommonHintRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1387
    iget v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mPaddingLeft:I

    iget v2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mPaddingTop:I

    iget v3, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mPaddingRight:I

    iget v4, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mPaddingBottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 1388
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCommonHintRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1390
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAlwaysHintText:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAutoHideHintText:Landroid/widget/TextView;

    if-nez v1, :cond_1

    goto/16 :goto_1

    .line 1393
    :cond_1
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1394
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAutoHideHintText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 1395
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleGuideRoot:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 1396
    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdAlgorithResultLayout:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1397
    iget-object v4, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdEffectLayout:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, 0x0

    .line 1398
    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 1399
    iget-object v6, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f0702ab

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1400
    invoke-virtual {v1, v5, v5, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 1401
    iget-object v5, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1402
    iget-object v5, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1403
    iget-object v5, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1404
    iget-object v5, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const/4 v5, 0x1

    const/16 v6, 0x10e

    const/16 v7, 0x5a

    if-ne p1, v5, :cond_3

    if-eq p3, v7, :cond_2

    if-eq p3, v6, :cond_2

    .line 1418
    iget-object v5, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f0702a3

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1419
    iget-object v5, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1420
    iget-object v5, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f07076d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1421
    iget-object v5, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f0702a8

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1422
    iget-object v5, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto/16 :goto_0

    .line 1409
    :cond_2
    iget-object v5, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f0702a9

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1410
    iget-object v5, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1411
    iget-object v5, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f07076e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1412
    iget-object v5, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f0702a7

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1413
    iget-object v5, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_0

    :cond_3
    const/4 v5, 0x2

    if-ne p1, v5, :cond_5

    if-eq p3, v7, :cond_4

    if-eq p3, v6, :cond_4

    .line 1438
    iget-object v5, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f0702a2

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1439
    iget-object v5, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1440
    iget-object v5, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f07076b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1441
    iget-object v5, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f0702a5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1442
    iget-object v5, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_0

    .line 1429
    :cond_4
    iget-object v5, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f0702a4

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1430
    iget-object v5, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1431
    iget-object v5, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f07076c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1432
    iget-object v5, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f0702a6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1433
    iget-object v5, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1448
    :cond_5
    :goto_0
    iget-object v5, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAlwaysHintText:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1449
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAutoHideHintText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1450
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleGuideRoot:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1451
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdAlgorithResultLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1452
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdEffectLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1453
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/ui/AbstractHintUI;->updateProgressBarLayoutForHover(IZI)V

    :cond_6
    :goto_1
    return-void
.end method
