.class public abstract Lcom/transsion/camera/app/ui/AbstractModePickerUI;
.super Ljava/lang/Object;
.source "AbstractModePickerUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/IRootUI;
.implements Lcom/transsion/camera/app/common/IScreenFormControl;
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Lcom/transsion/camera/app/ui/ModeHorizontalScroll2$IModeScrollCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/AbstractModePickerUI$CurrentModeUI;,
        Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;,
        Lcom/transsion/camera/app/ui/AbstractModePickerUI$OnTabScrollListenerImpl;,
        Lcom/transsion/camera/app/ui/AbstractModePickerUI$OnTabSelectedListenerImpl;,
        Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeChangedListenerWrapper;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private animatorSet:Landroid/animation/AnimatorSet;

.field private mAlphaPathInterpolator:Landroid/view/animation/PathInterpolator;

.field private mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

.field private mContext:Landroid/content/Context;

.field private mCurrentModeName:Ljava/lang/String;

.field private mCurrentModeUI:Lcom/transsion/camera/app/ui/AbstractModePickerUI$CurrentModeUI;

.field private mEnterGuideLeftAnimation:Landroid/animation/ObjectAnimator;

.field private mEnterGuideRightAnimation:Landroid/animation/ObjectAnimator;

.field private mEnterMoreMode:Z

.field private mExitGuideLeftAlphaAnimation:Landroid/animation/ObjectAnimator;

.field private mExitGuideRightAlphaAnimation:Landroid/animation/ObjectAnimator;

.field private mExitGuideRightTransXAnimation:Landroid/animation/ObjectAnimator;

.field private mFromResume:Z

.field private final mGuideAlphaInterpolator:Landroid/view/animation/PathInterpolator;

.field private mHoverTranslateAnimator:Landroid/animation/ValueAnimator;

.field private final mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

.field private mIsCameraSwitching:Z

.field private mIsEditMode:Z

.field private mIsReadyForScroll:Z

.field private mIsResumeAfterEdit:Z

.field private mLeftGuideRootMoveFollowTab:Z

.field private mModeArrow:Landroid/widget/ImageView;

.field private mModeArrowRoot:Landroid/view/View;

.field private mModeArrowSvga:Lcom/opensource/svgaplayer/SVGAImageView;

.field private mModeChangedListener:Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;

.field private final mModeHorizontalScroll:Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;

.field private final mModeInformation:Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;

.field private final mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

.field private mModePickerAlphaAnimation:Landroid/animation/ObjectAnimator;

.field private mModePickerLayout:Landroid/widget/FrameLayout;

.field private mModePickerRoot:Landroid/view/ViewGroup;

.field private mModePickerRootAnimatorSet:Landroid/animation/AnimatorSet;

.field private mModePickerTranslateAnimation:Landroid/animation/ObjectAnimator;

.field private mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

.field private final mModeVerticalScroll:Lcom/transsion/camera/app/ui/ModeVerticalScroll;

.field private final mMoreModeGuideAnim:Landroid/animation/AnimatorSet;

.field private mMoreModeGuideLeftRoot:Landroid/view/View;

.field private mMoreModeGuideRightRoot:Landroid/view/View;

.field private mMoreModeGuideRootTranX:F

.field private mMoreModeRightGuide:Landroid/widget/ImageView;

.field private mMoreTabOriginalLocation:I

.field private mNotifyClickGuideIconListener:Lcom/transsion/camera/app/common/IAppUIListener$INotifyClickGuideIconListener;

.field protected mOldValue:Z

.field private mOrderEditorFragmentControl:Lcom/transsion/camera/app/common/IAppUIControl$IOrderEditorFragmentControl;

.field private mOrientation:I

.field private mPathInterpolator:Landroid/view/animation/PathInterpolator;

.field private mRootView:Landroid/view/View;

.field private mSVGACallback:Lcom/opensource/svgaplayer/SVGACallback;

.field private mSVGAParser:Lcom/opensource/svgaplayer/SVGAParser;

.field private mScreenFormType:I

.field private final mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

.field private final mScreenWidth:I

.field private final mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

.field private mSelfTimerBegin:Z

.field private mSellingPointItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mStopScroll:Z

.field private mTranslateDistance:I

.field private final mTranslationXInterpolator:Landroid/view/animation/PathInterpolator;


# direct methods
.method public static synthetic $r8$lambda$7IJZA8cKlVIf1fqvi2QfO38oc1M(Lcom/transsion/camera/app/ui/AbstractModePickerUI;Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->lambda$updateLayoutParams$5(Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JA9r3WDUlk1GUMgKH-oZysYLaKU(Lcom/transsion/camera/app/ui/AbstractModePickerUI;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->lambda$exitMoreModeGuideAnimation$4(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OGD7gSKYpjJ2DPLHlsB0zk04514(Lcom/transsion/camera/app/ui/AbstractModePickerUI;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->lambda$setupViews$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_mAg5so6J6hEw4EGReuCAa-l8L4(Lcom/transsion/camera/app/ui/AbstractModePickerUI;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->lambda$enterMoreModeGuideAnimation$3(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qtDVIh8DH3s4CiFNZz84zOL8A94(Lcom/transsion/camera/app/ui/AbstractModePickerUI;Lcom/transsion/camera/app/common/storage/DataStore;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->lambda$setupViews$1(Lcom/transsion/camera/app/common/storage/DataStore;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uxCII9yoVabGMQSLp4jMB_Yu1ak(Lcom/transsion/camera/app/ui/AbstractModePickerUI;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->lambda$setupViews$0(Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 67
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ModePickerUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/app/ui/ModeVerticalScroll;Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;Landroid/content/Context;Lcom/transsion/camera/app/ui/ScrollConsumer;Lcom/transsion/camera/app/common/IAppUIControl$IOrderEditorFragmentControl;Lcom/transsion/camera/app/mode/ModeOrderProvider;Lcom/transsion/camera/app/ui/ScreenManager;)V
    .locals 6

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const/4 v2, 0x0

    const v3, 0x3f28f5c3    # 0.66f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mGuideAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    .line 76
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v5, 0x3e800000    # 0.25f

    invoke-direct {v0, v5, v2, v2, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mTranslationXInterpolator:Landroid/view/animation/PathInterpolator;

    const/4 v0, -0x1

    .line 96
    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mOrientation:I

    const/4 v0, 0x0

    .line 98
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mIsReadyForScroll:Z

    .line 111
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mIsCameraSwitching:Z

    .line 112
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mSelfTimerBegin:Z

    .line 114
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mIsResumeAfterEdit:Z

    .line 115
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mFromResume:Z

    .line 117
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v5, v2, v2, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 118
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mAlphaPathInterpolator:Landroid/view/animation/PathInterpolator;

    const/4 v0, 0x1

    .line 120
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mLeftGuideRootMoveFollowTab:Z

    .line 138
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mMoreModeGuideAnim:Landroid/animation/AnimatorSet;

    .line 1211
    new-instance v0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$9;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$9;-><init>(Lcom/transsion/camera/app/ui/AbstractModePickerUI;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mSVGACallback:Lcom/opensource/svgaplayer/SVGACallback;

    .line 1473
    new-instance v0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$10;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$10;-><init>(Lcom/transsion/camera/app/ui/AbstractModePickerUI;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    .line 146
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeVerticalScroll:Lcom/transsion/camera/app/ui/ModeVerticalScroll;

    .line 147
    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeHorizontalScroll:Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;

    .line 148
    iput-object p4, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    .line 150
    iput-object p7, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    .line 151
    invoke-virtual {p7}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mScreenFormType:I

    .line 152
    iput-object p5, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mOrderEditorFragmentControl:Lcom/transsion/camera/app/common/IAppUIControl$IOrderEditorFragmentControl;

    .line 153
    iput-object p3, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mContext:Landroid/content/Context;

    .line 154
    iput-object p6, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    .line 155
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f030023

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mSellingPointItems:Ljava/util/List;

    .line 156
    new-instance p1, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;

    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mContext:Landroid/content/Context;

    .line 157
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f1001da

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p0, p2, p6}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;-><init>(Lcom/transsion/camera/app/ui/AbstractModePickerUI;Ljava/lang/String;Lcom/transsion/camera/app/mode/ModeOrderProvider;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;

    .line 158
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/transsion/camera/utils/ScreenUtils;->getRealMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 159
    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mScreenWidth:I

    .line 160
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0706c9

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mTranslateDistance:I

    return-void
.end method

.method static synthetic access$1000(Lcom/transsion/camera/app/ui/AbstractModePickerUI;)F
    .locals 0

    .line 66
    iget p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mMoreModeGuideRootTranX:F

    return p0
.end method

.method static synthetic access$1002(Lcom/transsion/camera/app/ui/AbstractModePickerUI;F)F
    .locals 0

    .line 66
    iput p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mMoreModeGuideRootTranX:F

    return p1
.end method

.method static synthetic access$1100(Lcom/transsion/camera/app/ui/AbstractModePickerUI;)Lcom/transsion/camera/app/ui/widget/TabLayout;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/transsion/camera/app/ui/AbstractModePickerUI;)I
    .locals 0

    .line 66
    iget p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mMoreTabOriginalLocation:I

    return p0
.end method

.method static synthetic access$1202(Lcom/transsion/camera/app/ui/AbstractModePickerUI;I)I
    .locals 0

    .line 66
    iput p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mMoreTabOriginalLocation:I

    return p1
.end method

.method static synthetic access$2000(Lcom/transsion/camera/app/ui/AbstractModePickerUI;)Landroid/widget/FrameLayout;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModePickerLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/transsion/camera/app/ui/AbstractModePickerUI;)Ljava/lang/String;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mCurrentModeName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2502(Lcom/transsion/camera/app/ui/AbstractModePickerUI;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mCurrentModeName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/transsion/camera/app/ui/AbstractModePickerUI;)Lcom/transsion/camera/app/mode/ModeOrderProvider;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/transsion/camera/app/ui/AbstractModePickerUI;Ljava/lang/String;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->updateMoreModeGuideUI(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/transsion/camera/app/ui/AbstractModePickerUI;)Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/transsion/camera/app/ui/AbstractModePickerUI;)Z
    .locals 0

    .line 66
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mIsEditMode:Z

    return p0
.end method

.method static synthetic access$3100(Lcom/transsion/camera/app/ui/AbstractModePickerUI;)Lcom/transsion/camera/app/common/IAppUIControl$IOrderEditorFragmentControl;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mOrderEditorFragmentControl:Lcom/transsion/camera/app/common/IAppUIControl$IOrderEditorFragmentControl;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/transsion/camera/app/ui/AbstractModePickerUI;)Z
    .locals 0

    .line 66
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mIsResumeAfterEdit:Z

    return p0
.end method

.method static synthetic access$3300(Lcom/transsion/camera/app/ui/AbstractModePickerUI;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->notifyModeSwitch()V

    return-void
.end method

.method static synthetic access$3400(Lcom/transsion/camera/app/ui/AbstractModePickerUI;)Z
    .locals 0

    .line 66
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mLeftGuideRootMoveFollowTab:Z

    return p0
.end method

.method static synthetic access$3402(Lcom/transsion/camera/app/ui/AbstractModePickerUI;Z)Z
    .locals 0

    .line 66
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mLeftGuideRootMoveFollowTab:Z

    return p1
.end method

.method static synthetic access$3500(Lcom/transsion/camera/app/ui/AbstractModePickerUI;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->exitMoreModeGuideAnimation()V

    return-void
.end method

.method static synthetic access$3600(Lcom/transsion/camera/app/ui/AbstractModePickerUI;)Z
    .locals 0

    .line 66
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mStopScroll:Z

    return p0
.end method

.method static synthetic access$3700(Lcom/transsion/camera/app/ui/AbstractModePickerUI;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->updateMoreModeGuideLeftRootLocation()V

    return-void
.end method

.method static synthetic access$4300(Lcom/transsion/camera/app/ui/AbstractModePickerUI;)Lcom/opensource/svgaplayer/SVGAImageView;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeArrowSvga:Lcom/opensource/svgaplayer/SVGAImageView;

    return-object p0
.end method

.method static synthetic access$4400(Lcom/transsion/camera/app/ui/AbstractModePickerUI;)Lcom/opensource/svgaplayer/SVGACallback;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mSVGACallback:Lcom/opensource/svgaplayer/SVGACallback;

    return-object p0
.end method

.method static synthetic access$4500()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 66
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/transsion/camera/app/ui/AbstractModePickerUI;)Landroid/widget/ImageView;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeArrow:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$4700(Lcom/transsion/camera/app/ui/AbstractModePickerUI;)Landroid/content/Context;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$700(Lcom/transsion/camera/app/ui/AbstractModePickerUI;)Landroid/widget/ImageView;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mMoreModeRightGuide:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/transsion/camera/app/ui/AbstractModePickerUI;)Landroid/view/View;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mMoreModeGuideRightRoot:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$900(Lcom/transsion/camera/app/ui/AbstractModePickerUI;)Landroid/view/View;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mMoreModeGuideLeftRoot:Landroid/view/View;

    return-object p0
.end method

.method private cannotUpdateCurrentTab()Z
    .locals 4

    .line 572
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->access$400(Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 573
    :goto_1
    sget-object v1, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannotUpdateCurrentTab mFromResume: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mFromResume:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 574
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;

    invoke-static {v2}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->access$400(Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mFromResume:Z

    if-nez v2, :cond_2

    .line 575
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->notifyModeSwitch()V

    :cond_2
    if-eqz v0, :cond_3

    .line 578
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCurrentTab currentIsTabLayoutMode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;

    invoke-static {v3}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->access$400(Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " ModeTabLayout:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_3
    return v0
.end method

.method private cannotUpdateModeTabLayout()Z
    .locals 4

    .line 1025
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->access$3800(Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 1027
    sget-object v1, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateModeTabLayout mModeTabLayout:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " validModeList:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->access$3800(Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;)Z

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_2
    return v0
.end method

.method private enterMoreModeGuideAnimation()V
    .locals 6

    .line 301
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mMoreModeGuideRightRoot:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mMoreModeGuideLeftRoot:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mMoreModeRightGuide:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mExitGuideRightAlphaAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 306
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mExitGuideRightAlphaAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 308
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mExitGuideRightTransXAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 309
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mExitGuideRightTransXAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 311
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mExitGuideLeftAlphaAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 312
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mExitGuideLeftAlphaAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 314
    :cond_3
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exitMoreModeGuideAnimation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mEnterMoreMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 315
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mEnterMoreMode:Z

    .line 316
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mMoreModeGuideRightRoot:Landroid/view/View;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    const-string v3, "alpha"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v4, 0x96

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mEnterGuideRightAnimation:Landroid/animation/ObjectAnimator;

    .line 317
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mGuideAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 318
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mEnterGuideRightAnimation:Landroid/animation/ObjectAnimator;

    new-instance v2, Lcom/transsion/camera/app/ui/AbstractModePickerUI$1;

    invoke-direct {v2, p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$1;-><init>(Lcom/transsion/camera/app/ui/AbstractModePickerUI;)V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 331
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mEnterGuideRightAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 333
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mMoreModeGuideLeftRoot:Landroid/view/View;

    new-array v1, v1, [F

    fill-array-data v1, :array_1

    invoke-static {v0, v3, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mEnterGuideLeftAnimation:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x64

    .line 334
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 335
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mEnterGuideLeftAnimation:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 336
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mEnterGuideLeftAnimation:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mGuideAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 337
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mEnterGuideLeftAnimation:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/transsion/camera/app/ui/AbstractModePickerUI$2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$2;-><init>(Lcom/transsion/camera/app/ui/AbstractModePickerUI;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 356
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mEnterGuideLeftAnimation:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/transsion/camera/app/ui/AbstractModePickerUI$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/ui/AbstractModePickerUI;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 359
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mEnterGuideLeftAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    .line 302
    :cond_4
    :goto_0
    sget-object p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "mMoreModeGuideRightRoot, mMoreModeGuideLeftRoot or mMoreModeRightGuide is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private exitMoreModeGuideAnimation()V
    .locals 9

    .line 363
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mMoreModeGuideRightRoot:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mMoreModeGuideLeftRoot:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mMoreModeRightGuide:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 367
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mEnterMoreMode:Z

    if-nez v0, :cond_1

    return-void

    .line 370
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mEnterGuideRightAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 371
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mEnterGuideRightAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 373
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mEnterGuideLeftAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 374
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mEnterGuideLeftAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 376
    :cond_3
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exitMoreModeGuideAnimation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mEnterMoreMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 377
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mEnterMoreMode:Z

    .line 378
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mMoreModeGuideRightRoot:Landroid/view/View;

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    const-string v4, "alpha"

    invoke-static {v1, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v5, 0x12c

    invoke-virtual {v1, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mExitGuideRightAlphaAnimation:Landroid/animation/ObjectAnimator;

    .line 379
    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mGuideAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 380
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mExitGuideRightAlphaAnimation:Landroid/animation/ObjectAnimator;

    new-instance v3, Lcom/transsion/camera/app/ui/AbstractModePickerUI$3;

    invoke-direct {v3, p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$3;-><init>(Lcom/transsion/camera/app/ui/AbstractModePickerUI;)V

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 396
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mMoreModeGuideRightRoot:Landroid/view/View;

    new-array v3, v2, [F

    iget-object v7, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mContext:Landroid/content/Context;

    .line 397
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const/16 v8, 0xa

    invoke-static {v7, v8}, Lcom/transsion/camera/utils/UIUtils;->dp2Px(Landroid/content/res/Resources;I)I

    move-result v7

    neg-int v7, v7

    int-to-float v7, v7

    aput v7, v3, v0

    const/4 v0, 0x1

    const/4 v7, 0x0

    aput v7, v3, v0

    const-string v0, "translationX"

    .line 396
    invoke-static {v1, v0, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 397
    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mExitGuideRightTransXAnimation:Landroid/animation/ObjectAnimator;

    .line 398
    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 399
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mExitGuideRightTransXAnimation:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mTranslationXInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 400
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mExitGuideRightTransXAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 401
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mExitGuideRightAlphaAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 403
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mMoreModeGuideLeftRoot:Landroid/view/View;

    new-array v1, v2, [F

    fill-array-data v1, :array_1

    invoke-static {v0, v4, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mExitGuideLeftAlphaAnimation:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x96

    .line 404
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 405
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mExitGuideLeftAlphaAnimation:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mGuideAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 406
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mExitGuideLeftAlphaAnimation:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/transsion/camera/app/ui/AbstractModePickerUI$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/AbstractModePickerUI;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 410
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mExitGuideLeftAlphaAnimation:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/transsion/camera/app/ui/AbstractModePickerUI$4;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$4;-><init>(Lcom/transsion/camera/app/ui/AbstractModePickerUI;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 417
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mExitGuideLeftAlphaAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    .line 364
    :cond_4
    :goto_0
    sget-object p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "mMoreModeGuideRightRoot, mMoreModeGuideLeftRoot or mMoreModeRightGuide is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private isModePickerVisible()Z
    .locals 1

    .line 561
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModePickerLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModePickerLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$enterMoreModeGuideAnimation$3(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 357
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->updateMoreModeGuideLeftRootLocation()V

    return-void
.end method

.method private synthetic lambda$exitMoreModeGuideAnimation$4(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 407
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->updateMoreModeGuideLeftRootLocation()V

    return-void
.end method

.method private synthetic lambda$setupViews$0(Landroid/view/View;)V
    .locals 0

    .line 233
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->startPullingModePanel()V

    return-void
.end method

.method private synthetic lambda$setupViews$1(Lcom/transsion/camera/app/common/storage/DataStore;Landroid/view/View;)V
    .locals 3

    .line 241
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p2

    const-string v0, "key_more_mode_guide_click_time"

    const-string v1, "0"

    .line 240
    invoke-virtual {p1, v0, v1, p2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    const/4 v1, 0x3

    if-gt p2, v1, :cond_0

    .line 244
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, p2, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 246
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mMoreModeGuideAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 247
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mMoreModeGuideAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->end()V

    .line 249
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mNotifyClickGuideIconListener:Lcom/transsion/camera/app/common/IAppUIListener$INotifyClickGuideIconListener;

    if-eqz p1, :cond_2

    .line 250
    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUIListener$INotifyClickGuideIconListener;->notifyClickGuideIcon()V

    .line 252
    :cond_2
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->updateSpecifiedMode()V

    return-void
.end method

.method private synthetic lambda$setupViews$2(Landroid/view/View;)V
    .locals 0

    .line 257
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mIsCameraSwitching:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mSelfTimerBegin:Z

    if-nez p1, :cond_0

    .line 258
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->access$2400(Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;)V

    .line 259
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->updateCurrentModeAndNotify()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$updateLayoutParams$5(Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 838
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 839
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModePickerRoot:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private notifyModeSwitch()V
    .locals 1

    .line 747
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeChangedListener:Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;

    if-eqz v0, :cond_0

    .line 748
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->access$1900(Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;->onSwitchMode(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private playSvgaAnimation(Ljava/lang/String;)V
    .locals 2

    .line 1190
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[playSvgaAnimation] stopAnimation "

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1191
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeArrowSvga:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGAImageView;->stopAnimation()V

    .line 1192
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mSVGAParser:Lcom/opensource/svgaplayer/SVGAParser;

    new-instance v1, Lcom/transsion/camera/app/ui/AbstractModePickerUI$8;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$8;-><init>(Lcom/transsion/camera/app/ui/AbstractModePickerUI;)V

    invoke-virtual {v0, p1, v1}, Lcom/opensource/svgaplayer/SVGAParser;->parse(Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;)V

    return-void
.end method

.method private startPullingModePanel()V
    .locals 1

    .line 444
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->isModePickerVisible()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 445
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->spreadModePanel()V

    .line 446
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    if-eqz p0, :cond_1

    const/16 v0, 0x48

    .line 447
    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_1
    return-void
.end method

.method private updateCurrentModeAndNotify()V
    .locals 1

    const/4 v0, 0x0

    .line 741
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->updateCurrentTab(Z)V

    .line 742
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->updateCurrentModeUI()V

    .line 743
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->notifyModeSwitch()V

    return-void
.end method

.method private updateCurrentModeUI()V
    .locals 3

    .line 762
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    if-nez v0, :cond_0

    return-void

    .line 765
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->access$400(Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 766
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 767
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mMoreModeGuideRightRoot:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    .line 768
    invoke-virtual {v0}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->moreModeShow()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;

    .line 769
    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->access$2200(Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;)Lcom/transsion/camera/app/common/FeatureResource;

    move-result-object v0

    iget-object v0, v0, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    const-string v2, "com.transsion.camera.feature.mode.more.MoreModeEntry"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 770
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mMoreModeGuideRightRoot:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 772
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mCurrentModeUI:Lcom/transsion/camera/app/ui/AbstractModePickerUI$CurrentModeUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$CurrentModeUI;->access$2100(Lcom/transsion/camera/app/ui/AbstractModePickerUI$CurrentModeUI;)V

    const/4 v0, 0x1

    .line 773
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->updateModeArrowVisibility(Z)V

    goto :goto_0

    .line 775
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->access$2200(Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;)Lcom/transsion/camera/app/common/FeatureResource;

    move-result-object v0

    iget-object v0, v0, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    const-string v2, "com.transsion.camera.feature.arcore.ARCoreModeEntry"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 776
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 777
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mMoreModeGuideRightRoot:Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 778
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mMoreModeGuideRightRoot:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 780
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mMoreModeGuideLeftRoot:Landroid/view/View;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 781
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mMoreModeGuideLeftRoot:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 783
    :cond_4
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mCurrentModeUI:Lcom/transsion/camera/app/ui/AbstractModePickerUI$CurrentModeUI;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;

    invoke-static {v2}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->access$500(Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$CurrentModeUI;->access$600(Lcom/transsion/camera/app/ui/AbstractModePickerUI$CurrentModeUI;Ljava/lang/String;)V

    .line 784
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->updateModeArrowVisibility(Z)V

    :cond_5
    :goto_0
    return-void
.end method

.method private updateLayoutParams(IIZ)V
    .locals 5

    .line 815
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModePickerRoot:Landroid/view/ViewGroup;

    if-nez p1, :cond_0

    .line 816
    sget-object p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "updateLayoutParams mModePickerRoot is null."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 819
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mHoverTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-static {p1}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    .line 820
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/ScreenManager;->getModePlusBottomBarHeight()I

    move-result p1

    .line 821
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModePickerRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 823
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne p2, v3, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_3

    if-eq p2, v2, :cond_3

    const/4 v4, 0x3

    if-ne p2, v4, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    move p1, v1

    .line 833
    :cond_3
    :goto_1
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_4

    if-eqz p3, :cond_4

    new-array p2, v2, [I

    const/4 p3, 0x0

    aput v1, p2, p3

    aput p1, p2, v3

    .line 834
    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mHoverTranslateAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 p2, 0x190

    .line 835
    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 836
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mHoverTranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 837
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mHoverTranslateAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/transsion/camera/app/ui/AbstractModePickerUI$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0, v0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/app/ui/AbstractModePickerUI;Landroid/widget/FrameLayout$LayoutParams;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 841
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mHoverTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_2

    .line 843
    :cond_4
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 844
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModePickerRoot:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_2
    return-void
.end method

.method private updateModeArrowView(Z)V
    .locals 0

    .line 1463
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeArrow:Landroid/widget/ImageView;

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const p1, 0x7f0807b1

    .line 1467
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    const p1, 0x7f0807b0

    .line 1469
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method private updateModeTabLayout(Ljava/lang/String;Z)V
    .locals 9

    .line 1033
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->cannotUpdateModeTabLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1036
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->removeAllTabs()V

    .line 1037
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->access$3900(Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;)Ljava/util/List;

    move-result-object v0

    .line 1039
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/app/common/FeatureResource;

    .line 1040
    iget-object v4, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {v4}, Lcom/transsion/camera/app/ui/widget/TabLayout;->newTab()Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

    move-result-object v4

    .line 1041
    iget-object v5, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mSellingPointItems:Ljava/util/List;

    iget-object v6, v3, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mContext:Landroid/content/Context;

    iget-object v7, v3, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    .line 1042
    invoke-static {v5, v7}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getSPVal(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v6

    goto :goto_1

    :cond_1
    move v5, v1

    .line 1043
    :goto_1
    iget-object v7, v3, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureTitle:Ljava/lang/String;

    invoke-virtual {v4, v7}, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->setTextWithoutUpdate(Ljava/lang/CharSequence;)Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

    move-result-object v7

    const-class v8, Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    .line 1044
    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->setContentDescriptionWithoutUpdate(Ljava/lang/CharSequence;)Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

    move-result-object v7

    .line 1045
    invoke-virtual {v7, v5}, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->setShowPointIconWithoutUpdate(Z)Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

    move-result-object v5

    .line 1046
    invoke-virtual {v5}, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->updateView()V

    .line 1048
    iget-object v5, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;

    invoke-static {v5, v3, p2}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->access$4000(Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;Lcom/transsion/camera/app/common/FeatureResource;Z)Z

    move-result v3

    if-nez v2, :cond_3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move v2, v1

    goto :goto_3

    :cond_3
    :goto_2
    move v2, v6

    .line 1050
    :goto_3
    iget-object v5, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {v5, v4, v3}, Lcom/transsion/camera/app/ui/widget/TabLayout;->addTab(Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;Z)V

    goto :goto_0

    .line 1053
    :cond_4
    iget-boolean p2, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mIsEditMode:Z

    if-nez p2, :cond_5

    .line 1054
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/widget/TabLayout;->updateHeadFootPadding()V

    :cond_5
    if-eqz p1, :cond_6

    if-nez v2, :cond_6

    .line 1057
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->access$1700(Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method private updateMoreModeGuideLeftRootLocation()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 422
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/widget/TabLayout;->getMoreTabView()Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getLocationInWindow([I)V

    .line 423
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mMoreModeGuideLeftRoot:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 424
    iget v2, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mScreenWidth:I

    const/4 v3, 0x0

    aget v0, v0, v3

    sub-int/2addr v2, v0

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->getMoreTabView()Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    .line 425
    invoke-virtual {v3}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/16 v4, 0xc

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/UIUtils;->dp2Px(Landroid/content/res/Resources;I)I

    move-result v3

    sub-int/2addr v0, v3

    sub-int/2addr v2, v0

    iget v0, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v2, v0

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mMoreModeGuideRightRoot:Landroid/view/View;

    .line 427
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int/2addr v2, v0

    .line 428
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mMoreModeGuideLeftRoot:Landroid/view/View;

    neg-int v0, v2

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method

.method private updateMoreModeGuideUI(Ljava/lang/String;)V
    .locals 1

    const-string v0, "com.transsion.camera.feature.mode.more.MoreModeEntry"

    .line 942
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 943
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->enterMoreModeGuideAnimation()V

    goto :goto_0

    .line 945
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->exitMoreModeGuideAnimation()V

    :goto_0
    return-void
.end method

.method private updateMoreModeGuideView(Z)V
    .locals 0

    .line 1452
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mMoreModeRightGuide:Landroid/widget/ImageView;

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const p1, 0x7f08071a

    .line 1456
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    const p1, 0x7f08071b

    .line 1458
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method private updateSpecifiedMode()V
    .locals 0

    .line 437
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->getMoreTabView()Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 439
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;->performClick()Z

    :cond_0
    return-void
.end method


# virtual methods
.method public canScrollToNext()Z
    .locals 1

    .line 511
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->access$400(Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 512
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->canScrollToNext()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public canScrollToPrevious()Z
    .locals 1

    .line 519
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->access$400(Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 520
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->canScrollToPrevious()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public canScrolling()Z
    .locals 1

    .line 527
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->access$400(Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 528
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->canScrolling()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public cancelAnimation()V
    .locals 1

    .line 700
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 701
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    return-void
.end method

.method public currentIsIabLayoutMode()Z
    .locals 0

    .line 621
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->access$400(Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;)Z

    move-result p0

    return p0
.end method

.method protected abstract getTabAnimationDuration()I
.end method

.method protected abstract getTabAnimationInterpolator()Landroid/view/animation/Interpolator;
.end method

.method public hideModePicker()V
    .locals 6

    .line 682
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->cancelAnimation()V

    .line 683
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModePickerLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    new-array v2, v1, [F

    .line 684
    fill-array-data v2, :array_0

    const-string v3, "alpha"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModePickerAlphaAnimation:Landroid/animation/ObjectAnimator;

    .line 685
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModePickerLayout:Landroid/widget/FrameLayout;

    new-array v2, v1, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v3, v2, v4

    iget v3, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mTranslateDistance:I

    int-to-float v3, v3

    const/4 v5, 0x1

    aput v3, v2, v5

    const-string v3, "translationY"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModePickerTranslateAnimation:Landroid/animation/ObjectAnimator;

    .line 686
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->animatorSet:Landroid/animation/AnimatorSet;

    new-array v1, v1, [Landroid/animation/Animator;

    .line 687
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModePickerAlphaAnimation:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModePickerTranslateAnimation:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 688
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->animatorSet:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 689
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/transsion/camera/app/ui/AbstractModePickerUI$6;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$6;-><init>(Lcom/transsion/camera/app/ui/AbstractModePickerUI;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 695
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->animatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0x12c

    invoke-virtual {p0, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .line 165
    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModePickerRoot:Landroid/view/ViewGroup;

    .line 167
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeVerticalScroll:Lcom/transsion/camera/app/ui/ModeVerticalScroll;

    invoke-virtual {v0, p2}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->setModePickerLayout(Landroid/view/ViewGroup;)V

    const v0, 0x7f0c00fb

    const/4 v1, 0x1

    .line 168
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mRootView:Landroid/view/View;

    .line 170
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    invoke-virtual {p1}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->getConfig()Lcom/transsion/camera/app/mode/ModePickerConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/mode/ModePickerConfig;->moreModeSupport()Z

    move-result p1

    if-nez p1, :cond_0

    .line 171
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mRootView:Landroid/view/View;

    const p2, 0x7f0902aa

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeArrowRoot:Landroid/view/View;

    .line 172
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mRootView:Landroid/view/View;

    const p2, 0x7f0902a9

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeArrow:Landroid/widget/ImageView;

    .line 173
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mRootView:Landroid/view/View;

    const p2, 0x7f0902ab

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/opensource/svgaplayer/SVGAImageView;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeArrowSvga:Lcom/opensource/svgaplayer/SVGAImageView;

    .line 174
    new-instance p1, Lcom/opensource/svgaplayer/SVGAParser;

    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/opensource/svgaplayer/SVGAParser;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mSVGAParser:Lcom/opensource/svgaplayer/SVGAParser;

    .line 177
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mRootView:Landroid/view/View;

    const p2, 0x7f0902d9

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mMoreModeGuideRightRoot:Landroid/view/View;

    .line 178
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mRootView:Landroid/view/View;

    const p2, 0x7f0902d7

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mMoreModeGuideLeftRoot:Landroid/view/View;

    .line 179
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mRootView:Landroid/view/View;

    const p2, 0x7f0902d8

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mMoreModeRightGuide:Landroid/widget/ImageView;

    .line 181
    new-instance p1, Lcom/transsion/camera/app/ui/AbstractModePickerUI$CurrentModeUI;

    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mRootView:Landroid/view/View;

    const v0, 0x7f090109

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mRootView:Landroid/view/View;

    const v3, 0x7f090108

    .line 182
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mRootView:Landroid/view/View;

    const v4, 0x7f090107

    .line 183
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-direct {p1, p2, v2, v3, v4}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$CurrentModeUI;-><init>(Landroid/view/View;Landroid/widget/TextView;Landroid/widget/ImageView;Lcom/transsion/camera/app/ui/AbstractModePickerUI$1;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mCurrentModeUI:Lcom/transsion/camera/app/ui/AbstractModePickerUI$CurrentModeUI;

    .line 184
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mRootView:Landroid/view/View;

    const p2, 0x7f0902ae

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModePickerLayout:Landroid/widget/FrameLayout;

    .line 185
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mRootView:Landroid/view/View;

    const p2, 0x7f0902af

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/TabLayout;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    .line 186
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->getTabAnimationDuration()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/widget/TabLayout;->setTabAnimationDuration(I)V

    .line 187
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->getTabAnimationInterpolator()Landroid/view/animation/Interpolator;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/widget/TabLayout;->setTabAnimationInterpolator(Landroid/view/animation/Interpolator;)V

    .line 188
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {p1, v1}, Landroid/widget/HorizontalScrollView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 189
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {p1}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const/high16 v1, 0x42a00000    # 80.0f

    invoke-static {p2, v1}, Lcom/transsion/camera/utils/UIUtils;->dp2Px(Landroid/content/res/Resources;F)F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p1, p2}, Landroid/widget/HorizontalScrollView;->setFadingEdgeLength(I)V

    .line 190
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/HorizontalScrollView;->setFocusable(Z)V

    .line 191
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    invoke-virtual {p1}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->getConfig()Lcom/transsion/camera/app/mode/ModePickerConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/mode/ModePickerConfig;->modePickerStyleMore()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 192
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {p1}, Landroid/widget/HorizontalScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    .line 193
    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 194
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0703f0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 195
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {v1, p1}, Landroid/widget/HorizontalScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 197
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mRootView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 198
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 199
    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 200
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 202
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeHorizontalScroll:Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->setModeScroll(Lcom/transsion/camera/app/ui/ModeHorizontalScroll2$IModeScrollCallback;)V

    .line 204
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->isModePanelGuideSupported()Z

    move-result p1

    const/16 v0, 0x8

    if-nez p1, :cond_3

    .line 205
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f030021

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    .line 206
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030022

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 207
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeArrow:Landroid/widget/ImageView;

    if-eqz v2, :cond_3

    .line 208
    array-length p1, p1

    array-length v1, v1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/4 v1, 0x6

    if-ge p1, v1, :cond_2

    .line 209
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeArrow:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 211
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeArrow:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 216
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    invoke-virtual {p1}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->getConfig()Lcom/transsion/camera/app/mode/ModePickerConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/mode/ModePickerConfig;->modePickerStyleMore()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 217
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mMoreModeGuideRightRoot:Landroid/view/View;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    invoke-virtual {v1}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->moreModeShow()Z

    move-result v1

    if-eqz v1, :cond_4

    move v0, p2

    :cond_4
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 220
    :cond_5
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/ModuleTransferManager;->registerTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    .line 221
    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mOldValue:Z

    .line 222
    iget p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mOrientation:I

    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mScreenFormType:I

    invoke-direct {p0, p1, v0, p2}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->updateLayoutParams(IIZ)V

    .line 223
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method public isEnabled()Z
    .locals 0

    .line 548
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isModePanelGuideSupported()Z
    .locals 2

    .line 552
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mContext:Landroid/content/Context;

    .line 553
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "camera_mode_panel_guide_support"

    .line 552
    invoke-static {p0, v1, v0}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isModeTabScrolling()Z
    .locals 0

    .line 610
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 613
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->isScrolling()Z

    move-result p0

    return p0
.end method

.method public isTabLayoutMode(Ljava/lang/String;)Z
    .locals 0

    .line 617
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->access$1800(Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public modePickerHideAlphaAnimator(I)Landroid/animation/ObjectAnimator;
    .locals 3

    .line 737
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModePickerLayout:Landroid/widget/FrameLayout;

    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    const-string v1, "alpha"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method public modePickerShowAlphaAnimator(I)Landroid/animation/ObjectAnimator;
    .locals 3

    .line 728
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModePickerLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 729
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 731
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModePickerLayout:Landroid/widget/FrameLayout;

    const/4 v0, 0x1

    new-array v0, v0, [F

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    const-string v1, "alpha"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method public onBackPressed()Z
    .locals 2

    .line 791
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModePickerLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mCurrentModeUI:Lcom/transsion/camera/app/ui/AbstractModePickerUI$CurrentModeUI;

    if-eqz v0, :cond_0

    .line 792
    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$CurrentModeUI;->access$2300(Lcom/transsion/camera/app/ui/AbstractModePickerUI$CurrentModeUI;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 793
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 794
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 795
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->access$2400(Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;)V

    .line 796
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->updateCurrentModeAndNotify()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    .line 888
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mIsReadyForScroll:Z

    const/4 p0, 0x0

    return p0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .locals 1

    .line 279
    iput p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mScreenFormType:I

    .line 280
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mOrientation:I

    invoke-direct {p0, v0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->updateLayoutParams(IIZ)V

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    .line 858
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    return p2

    .line 862
    :cond_0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mIsReadyForScroll:Z

    if-nez p0, :cond_1

    return p2

    .line 865
    :cond_1
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    return p2
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public playMoreModeGuideAnim()V
    .locals 6

    .line 1119
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mMoreModeRightGuide:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    .line 1122
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mMoreModeGuideAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1123
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mMoreModeGuideAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 1125
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mMoreModeRightGuide:Landroid/widget/ImageView;

    const/4 v1, 0x3

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    const-string v3, "scaleX"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1126
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    const/4 v2, 0x1

    .line 1127
    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 1128
    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mMoreModeRightGuide:Landroid/widget/ImageView;

    new-array v4, v1, [F

    fill-array-data v4, :array_1

    const-string v5, "scaleY"

    invoke-static {v3, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 1129
    invoke-virtual {v3, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 1130
    invoke-virtual {v3, v2}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 1132
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mMoreModeGuideAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1133
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mMoreModeGuideAnim:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0x320

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1134
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mMoreModeGuideAnim:Landroid/animation/AnimatorSet;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3ea8f5c3    # 0.33f

    const/4 v3, 0x0

    const v4, 0x3f28f5c3    # 0.66f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1135
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mMoreModeGuideAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f99999a    # 1.2f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f99999a    # 1.2f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected ringScreenLightUpdateUI()V
    .locals 2

    .line 1446
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mOldValue:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/TabLayout;->setTabNormalTextColorState(Z)V

    .line 1447
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mOldValue:Z

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->updateModeArrowView(Z)V

    .line 1448
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mOldValue:Z

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->updateMoreModeGuideView(Z)V

    return-void
.end method

.method public scrollToNext()V
    .locals 1

    .line 484
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->isModePickerVisible()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 487
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->access$400(Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 488
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->scrollToNext()V

    :cond_1
    return-void
.end method

.method public scrollToPrevious()V
    .locals 1

    .line 474
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->isModePickerVisible()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 477
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->access$400(Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 478
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->scrollToPrevious()V

    :cond_1
    return-void
.end method

.method public scrolling(FF)V
    .locals 1

    .line 463
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mIsEditMode:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->isModePickerVisible()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 466
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->access$400(Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 467
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mStopScroll:Z

    .line 468
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/TabLayout;->scrolling(FF)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V
    .locals 0

    .line 951
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    return-void
.end method

.method public setEnable(Z)V
    .locals 1

    .line 535
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    if-eqz v0, :cond_0

    .line 536
    invoke-virtual {v0, p1}, Landroid/widget/HorizontalScrollView;->setEnabled(Z)V

    .line 538
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mCurrentModeUI:Lcom/transsion/camera/app/ui/AbstractModePickerUI$CurrentModeUI;

    if-eqz v0, :cond_1

    .line 539
    invoke-static {v0, p1}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$CurrentModeUI;->access$1300(Lcom/transsion/camera/app/ui/AbstractModePickerUI$CurrentModeUI;Z)V

    .line 541
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeArrow:Landroid/widget/ImageView;

    if-eqz p0, :cond_2

    .line 542
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    :cond_2
    return-void
.end method

.method public setIsCameraSwitching(Z)V
    .locals 0

    .line 714
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mIsCameraSwitching:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 717
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mFromResume:Z

    :cond_0
    return-void
.end method

.method public setIsResumeAfterEdit(Z)V
    .locals 0

    .line 1442
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mIsResumeAfterEdit:Z

    return-void
.end method

.method public setModeChangedListener(Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 910
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeChangedListener:Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;

    goto :goto_0

    .line 912
    :cond_0
    new-instance v0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeChangedListenerWrapper;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeChangedListenerWrapper;-><init>(Lcom/transsion/camera/app/ui/AbstractModePickerUI;Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeChangedListener:Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;

    :goto_0
    return-void
.end method

.method public setModePickerOpaque()V
    .locals 1

    .line 670
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModePickerLayout:Landroid/widget/FrameLayout;

    if-eqz p0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 671
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public setModePickerUnOpaque()V
    .locals 1

    .line 676
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModePickerLayout:Landroid/widget/FrameLayout;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 677
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public setMoreModeGuideRightRootOpaque()V
    .locals 2

    .line 917
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mMoreModeGuideRightRoot:Landroid/view/View;

    if-eqz v0, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 918
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 919
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mMoreModeGuideRightRoot:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    return-void
.end method

.method public setNotifyClickMoreModeGuideIconListener(Lcom/transsion/camera/app/common/IAppUIListener$INotifyClickGuideIconListener;)V
    .locals 0

    .line 433
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mNotifyClickGuideIconListener:Lcom/transsion/camera/app/common/IAppUIListener$INotifyClickGuideIconListener;

    return-void
.end method

.method public setSelfTimerBegin(Z)V
    .locals 0

    .line 722
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mSelfTimerBegin:Z

    return-void
.end method

.method public setViewEnable(Z)V
    .locals 0

    .line 968
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mMoreModeRightGuide:Landroid/widget/ImageView;

    if-eqz p0, :cond_0

    .line 969
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setupViews()V
    .locals 5

    .line 228
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 229
    new-instance v1, Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;-><init>(Landroid/content/Context;)V

    .line 230
    new-instance v2, Landroid/view/GestureDetector;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v2, v0, p0, v3, v4}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V

    .line 231
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeArrow:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 232
    new-instance v4, Lcom/transsion/camera/app/ui/AbstractModePickerUI$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/app/ui/AbstractModePickerUI;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mMoreModeRightGuide:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 238
    new-instance v4, Lcom/transsion/camera/app/ui/AbstractModePickerUI$$ExternalSyntheticLambda4;

    invoke-direct {v4, p0, v1}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$$ExternalSyntheticLambda4;-><init>(Lcom/transsion/camera/app/ui/AbstractModePickerUI;Lcom/transsion/camera/app/common/storage/DataStore;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mCurrentModeUI:Lcom/transsion/camera/app/ui/AbstractModePickerUI$CurrentModeUI;

    new-instance v1, Lcom/transsion/camera/app/ui/AbstractModePickerUI$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$$ExternalSyntheticLambda5;-><init>(Lcom/transsion/camera/app/ui/AbstractModePickerUI;)V

    invoke-static {v0, v1}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$CurrentModeUI;->access$100(Lcom/transsion/camera/app/ui/AbstractModePickerUI$CurrentModeUI;Landroid/view/View$OnClickListener;)V

    .line 263
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/ui/widget/TabLayout;->setGestureDetector(Landroid/view/GestureDetector;)V

    .line 264
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    new-instance v1, Lcom/transsion/camera/app/ui/AbstractModePickerUI$OnTabSelectedListenerImpl;

    invoke-direct {v1, p0, v3}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$OnTabSelectedListenerImpl;-><init>(Lcom/transsion/camera/app/ui/AbstractModePickerUI;Lcom/transsion/camera/app/ui/AbstractModePickerUI$1;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/TabLayout;->setOnTabSelectedListener(Lcom/transsion/camera/app/ui/widget/TabLayout$OnTabSelectedListener;)V

    .line 265
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    new-instance v1, Lcom/transsion/camera/app/ui/AbstractModePickerUI$OnTabScrollListenerImpl;

    invoke-direct {v1, p0, v3}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$OnTabScrollListenerImpl;-><init>(Lcom/transsion/camera/app/ui/AbstractModePickerUI;Lcom/transsion/camera/app/ui/AbstractModePickerUI$1;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/TabLayout;->setOnTabScrollListener(Lcom/transsion/camera/app/ui/widget/TabLayout$OnTabScrollListener;)V

    .line 266
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setEnabled(Z)V

    .line 267
    invoke-direct {p0, v3, v1}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->updateModeTabLayout(Ljava/lang/String;Z)V

    .line 268
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->updateCurrentTab(Z)V

    .line 269
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->ringScreenLightUpdateUI()V

    .line 270
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->access$400(Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 271
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 272
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mCurrentModeUI:Lcom/transsion/camera/app/ui/AbstractModePickerUI$CurrentModeUI;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;

    invoke-static {v2}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->access$500(Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$CurrentModeUI;->access$600(Lcom/transsion/camera/app/ui/AbstractModePickerUI$CurrentModeUI;Ljava/lang/String;)V

    .line 273
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->updateModeArrowVisibility(Z)V

    :cond_2
    return-void
.end method

.method public shouldExitCameraOnBackPressed()Z
    .locals 0

    .line 803
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->access$400(Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;)Z

    move-result p0

    return p0
.end method

.method public showModePicker()V
    .locals 6

    .line 633
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->cancelAnimation()V

    .line 634
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModePickerLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 635
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModePickerLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    const-string v3, "alpha"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModePickerAlphaAnimation:Landroid/animation/ObjectAnimator;

    .line 636
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModePickerLayout:Landroid/widget/FrameLayout;

    new-array v2, v1, [F

    iget v3, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mTranslateDistance:I

    int-to-float v3, v3

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v3, 0x0

    const/4 v5, 0x1

    aput v3, v2, v5

    const-string v3, "translationY"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModePickerTranslateAnimation:Landroid/animation/ObjectAnimator;

    .line 637
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->animatorSet:Landroid/animation/AnimatorSet;

    new-array v1, v1, [Landroid/animation/Animator;

    .line 638
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModePickerAlphaAnimation:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModePickerTranslateAnimation:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 639
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->animatorSet:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 640
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/transsion/camera/app/ui/AbstractModePickerUI$5;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$5;-><init>(Lcom/transsion/camera/app/ui/AbstractModePickerUI;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 646
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->animatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 648
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->updateCurrentModeUI()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public showModeRegionOnSinked()V
    .locals 3

    .line 656
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    if-nez v0, :cond_0

    return-void

    .line 659
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->access$400(Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 660
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 661
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mCurrentModeUI:Lcom/transsion/camera/app/ui/AbstractModePickerUI$CurrentModeUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$CurrentModeUI;->access$2100(Lcom/transsion/camera/app/ui/AbstractModePickerUI$CurrentModeUI;)V

    const/4 v0, 0x1

    .line 662
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->updateModeArrowVisibility(Z)V

    goto :goto_0

    .line 664
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 665
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->updateModeArrowVisibility(Z)V

    :goto_0
    return-void
.end method

.method public showOrHideModePickerRootUI(ZZ)V
    .locals 12

    if-eqz p2, :cond_0

    const-wide/16 v0, 0x12c

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    const/4 p2, 0x0

    if-eqz p1, :cond_1

    move v2, p2

    goto :goto_1

    .line 1151
    :cond_1
    iget v2, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mTranslateDistance:I

    .line 1153
    :goto_1
    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModePickerRootAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_2

    .line 1154
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1157
    :cond_2
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModePickerRootAnimatorSet:Landroid/animation/AnimatorSet;

    .line 1158
    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeArrow:Landroid/widget/ImageView;

    const/4 v4, 0x1

    new-array v5, v4, [F

    int-to-float v6, p1

    aput v6, v5, p2

    const-string v7, "alpha"

    invoke-static {v3, v7, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 1159
    iget-object v5, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModePickerLayout:Landroid/widget/FrameLayout;

    new-array v8, v4, [F

    int-to-float v2, v2

    aput v2, v8, p2

    const-string v2, "translationY"

    invoke-static {v5, v2, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 1160
    iget-object v5, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModePickerLayout:Landroid/widget/FrameLayout;

    new-array v8, v4, [F

    aput v6, v8, p2

    invoke-static {v5, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 1161
    iget-object v8, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    invoke-virtual {v8}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->getConfig()Lcom/transsion/camera/app/mode/ModePickerConfig;

    move-result-object v8

    invoke-virtual {v8}, Lcom/transsion/camera/app/mode/ModePickerConfig;->modePickerStyleMore()Z

    move-result v8

    const/4 v9, 0x2

    const/4 v10, 0x3

    if-eqz v8, :cond_5

    .line 1162
    iget-object v8, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mMoreModeGuideRightRoot:Landroid/view/View;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;

    invoke-static {v8}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->access$400(Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mCurrentModeName:Ljava/lang/String;

    const-string v11, "com.transsion.camera.feature.mode.more.MoreModeEntry"

    .line 1163
    invoke-static {v11, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    iget-object v8, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    .line 1164
    invoke-virtual {v8}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->moreModeShow()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1166
    iget-object v8, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mMoreModeGuideRightRoot:Landroid/view/View;

    new-array v11, v4, [F

    aput v6, v11, p2

    invoke-static {v8, v7, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1167
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModePickerRootAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v6, 0x4

    new-array v6, v6, [Landroid/animation/Animator;

    aput-object v3, v6, p2

    aput-object v0, v6, v4

    aput-object v2, v6, v9

    aput-object v5, v6, v10

    invoke-virtual {v1, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1168
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mMoreModeGuideRightRoot:Landroid/view/View;

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    const/16 p2, 0x8

    :goto_2
    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 1170
    :cond_4
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModePickerRootAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v1, v10, [Landroid/animation/Animator;

    aput-object v3, v1, p2

    aput-object v2, v1, v4

    aput-object v5, v1, v9

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_3

    .line 1173
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModePickerRootAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v1, v10, [Landroid/animation/Animator;

    aput-object v3, v1, p2

    aput-object v2, v1, v4

    aput-object v5, v1, v9

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1175
    :goto_3
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModePickerRootAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    if-eqz p1, :cond_6

    .line 1177
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mAlphaPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v3, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1178
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModePickerRootAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0x64

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 1179
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModePickerRootAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance p2, Lcom/transsion/camera/app/ui/AbstractModePickerUI$7;

    invoke-direct {p2, p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$7;-><init>(Lcom/transsion/camera/app/ui/AbstractModePickerUI;)V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1186
    :cond_6
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModePickerRootAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public showOrHideMoreModeGuideRightView(Z)V
    .locals 1

    .line 706
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    invoke-virtual {v0}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->getConfig()Lcom/transsion/camera/app/mode/ModePickerConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/mode/ModePickerConfig;->modePickerStyleMore()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 707
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mMoreModeGuideRightRoot:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->access$400(Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 708
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mMoreModeGuideRightRoot:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public stopScroll()V
    .locals 3

    .line 494
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mCurrentModeName:Ljava/lang/String;

    const-string v1, "com.transsion.camera.feature.mode.more.MoreModeEntry"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 495
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->getCenterNearestIndex()I

    move-result v0

    .line 496
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/widget/TabLayout;->getTabCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    .line 497
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mLeftGuideRootMoveFollowTab:Z

    if-nez v0, :cond_0

    .line 498
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->enterMoreModeGuideAnimation()V

    .line 501
    :cond_0
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mLeftGuideRootMoveFollowTab:Z

    .line 502
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mStopScroll:Z

    .line 504
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->access$400(Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 505
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->stopScroll()V

    :cond_2
    return-void
.end method

.method public unInit()V
    .locals 2

    .line 808
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ModuleTransferManager;->unregisterTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    .line 809
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeArrowSvga:Lcom/opensource/svgaplayer/SVGAImageView;

    if-eqz p0, :cond_0

    .line 810
    invoke-virtual {p0}, Lcom/opensource/svgaplayer/SVGAImageView;->clear()V

    :cond_0
    return-void
.end method

.method public updateArrowEnableState(Z)V
    .locals 0

    .line 1073
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeArrow:Landroid/widget/ImageView;

    if-eqz p0, :cond_0

    .line 1074
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setClickable(Z)V

    :cond_0
    return-void
.end method

.method public updateCurrentCamera(Ljava/lang/String;)V
    .locals 0

    .line 754
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    invoke-virtual {p1}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->getConfig()Lcom/transsion/camera/app/mode/ModePickerConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/mode/ModePickerConfig;->modePickerStyleMore()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 755
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mMoreModeGuideRightRoot:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 756
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    invoke-virtual {p0}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->moreModeShow()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public updateCurrentMode(Ljava/lang/String;Z)V
    .locals 1

    .line 599
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mCurrentModeName:Ljava/lang/String;

    const-string v0, "com.transsion.camera.feature.mode.more.MoreModeEntry"

    .line 600
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 601
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->exitMoreModeGuideAnimation()V

    .line 603
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;

    invoke-static {v0, p1}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->access$1700(Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;Ljava/lang/String;)V

    .line 604
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->updateCurrentTab(Z)V

    .line 605
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->updateCurrentModeUI()V

    return-void
.end method

.method public updateCurrentTab(Z)V
    .locals 1

    .line 565
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->cannotUpdateCurrentTab()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 568
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->access$1400(Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;)I

    move-result p0

    invoke-virtual {v0, p0, p1}, Lcom/transsion/camera/app/ui/widget/TabLayout;->selectTabIndex(IZ)Z

    return-void
.end method

.method public updateGuideRightRootVisibleState(I)V
    .locals 2

    .line 285
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mMoreModeGuideRightRoot:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x8

    if-eq p1, v1, :cond_3

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    goto :goto_0

    .line 292
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    invoke-virtual {v0}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->getConfig()Lcom/transsion/camera/app/mode/ModePickerConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/mode/ModePickerConfig;->modePickerStyleMore()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mCurrentModeName:Ljava/lang/String;

    const-string v1, "com.transsion.camera.feature.mode.more.MoreModeEntry"

    .line 293
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;

    .line 294
    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->access$400(Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    .line 295
    invoke-virtual {v0}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->moreModeShow()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 296
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mMoreModeGuideRightRoot:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void

    .line 289
    :cond_3
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public updateMode(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 626
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->access$1900(Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 627
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;

    invoke-static {v0, p1}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->access$1700(Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;Ljava/lang/String;)V

    .line 628
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->updateCurrentModeAndNotify()V

    :cond_0
    return-void
.end method

.method public updateModeArrowState(ZZ)V
    .locals 3

    .line 1100
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeArrow:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeArrowSvga:Lcom/opensource/svgaplayer/SVGAImageView;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mSVGAParser:Lcom/opensource/svgaplayer/SVGAParser;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_2

    const/4 p1, 0x4

    .line 1104
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz p2, :cond_1

    const-string p1, "mode_picker_arrow_min_anim.svga"

    .line 1106
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->playSvgaAnimation(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "mode_picker_arrow_anim.svga"

    .line 1108
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->playSvgaAnimation(Ljava/lang/String;)V

    goto :goto_0

    .line 1111
    :cond_2
    invoke-virtual {v1}, Lcom/opensource/svgaplayer/SVGAImageView;->isAnimating()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1112
    sget-object p1, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "[updateModeArrowState] stopAnimation."

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1113
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeArrowSvga:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {p0}, Lcom/opensource/svgaplayer/SVGAImageView;->stopAnimation()V

    :cond_3
    :goto_0
    return-void
.end method

.method public updateModeArrowVisibility(Z)V
    .locals 5

    .line 1079
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeArrowSvga:Lcom/opensource/svgaplayer/SVGAImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGAImageView;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1080
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[updateModeArrowVisibility] stopAnimation."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1081
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeArrowSvga:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGAImageView;->stopAnimation()V

    .line 1084
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeArrowRoot:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 1085
    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;

    invoke-static {v3}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->access$4200(Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1088
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeArrow:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->isModePanelGuideSupported()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1089
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f030021

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 1090
    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f030022

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 1091
    array-length v0, v0

    array-length v3, v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v3, 0x6

    if-ge v0, v3, :cond_3

    .line 1092
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeArrow:Landroid/widget/ImageView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 1094
    :cond_3
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeArrow:Landroid/widget/ImageView;

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    :goto_1
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_5
    :goto_2
    return-void
.end method

.method public updateModes(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/FeatureResource;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 592
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->access$1600(Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;I)V

    const/4 p1, 0x0

    .line 593
    invoke-direct {p0, p2, p1}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->updateModeTabLayout(Ljava/lang/String;Z)V

    .line 594
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->updateCurrentTab(Z)V

    return-void
.end method

.method public updateModes(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/FeatureResource;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 585
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;

    invoke-static {v0, p1, p2, p3}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->access$1500(Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_0

    move-object p2, p3

    .line 586
    :cond_0
    invoke-direct {p0, p2, p4}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->updateModeTabLayout(Ljava/lang/String;Z)V

    const/4 p1, 0x0

    .line 587
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->updateCurrentTab(Z)V

    return-void
.end method

.method public updateMoreEditMode(Z)V
    .locals 0

    .line 955
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mIsEditMode:Z

    return-void
.end method

.method public updateMoreGuideState(Z)V
    .locals 3

    .line 959
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mMoreModeGuideRightRoot:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 962
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    .line 960
    invoke-virtual {v1}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->moreModeShow()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mCurrentModeUI:Lcom/transsion/camera/app/ui/AbstractModePickerUI$CurrentModeUI;

    .line 961
    invoke-static {v1}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$CurrentModeUI;->access$2300(Lcom/transsion/camera/app/ui/AbstractModePickerUI$CurrentModeUI;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;

    .line 962
    invoke-static {v1}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->access$2200(Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;)Lcom/transsion/camera/app/common/FeatureResource;

    move-result-object v1

    iget-object v1, v1, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    const-string v2, "com.transsion.camera.feature.mode.more.MoreModeEntry"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    .line 960
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 963
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mMoreModeRightGuide:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setClickable(Z)V

    :cond_1
    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method

.method public updateTabIndexOnPause(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1246
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->access$1900(Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1247
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;

    invoke-static {v0, p1}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->access$1700(Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;Ljava/lang/String;)V

    .line 1248
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->access$1400(Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;)I

    move-result p0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->selectTabIndex(IZ)Z

    :cond_0
    return-void
.end method

.method public updateTabIndexOnResume(Ljava/lang/String;)V
    .locals 3

    .line 1235
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateTabIndexOnResume currentMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", currentModeFeatureName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;

    .line 1236
    invoke-static {v2}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->access$1900(Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1235
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1237
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mFromResume:Z

    .line 1239
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->access$1900(Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1240
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->checkTabIndex()V

    :cond_0
    return-void
.end method

.method public updateTabSellingPointState()V
    .locals 5

    .line 1062
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    move v1, v0

    .line 1063
    :goto_0
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/widget/TabLayout;->getTabCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1064
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeInformation:Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;

    invoke-static {v2, v1}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->access$4100(Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;I)Lcom/transsion/camera/app/common/FeatureResource;

    move-result-object v2

    .line 1065
    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mSellingPointItems:Ljava/util/List;

    iget-object v4, v2, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mContext:Landroid/content/Context;

    iget-object v2, v2, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    .line 1066
    invoke-static {v3, v2}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getSPVal(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    move v2, v0

    .line 1067
    :goto_1
    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->mModeTabLayout:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {v3, v1}, Lcom/transsion/camera/app/ui/widget/TabLayout;->getTabAt(I)Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->setShowPointIcon(Z)Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
