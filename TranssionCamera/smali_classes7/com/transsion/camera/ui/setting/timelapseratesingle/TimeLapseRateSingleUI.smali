.class public Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;
.super Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;
.source "TimeLapseRateSingleUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$TabViewHolder;,
        Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$TabAdapter;,
        Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$TimeLapseWarningCallbackImpl;,
        Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$MyStatusChangeListener;,
        Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$UIHandler;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION_300:I = 0x12c

.field private static final MSG_SELECT_INDICATOR:I = 0x4

.field private static final MSG_SHOW_AUTO_SELECTED_INFO:I = 0x1

.field private static final MSG_SHOW_HOLD_STEADY_INFO:I = 0x2

.field private static final MSG_UPDATE_TEXT_COLOR:I = 0x3

.field private static final PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private static final SETTING_KEY:Ljava/lang/String; = "key_time_lapse"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final ZERO_OFFSET:I


# instance fields
.field private final mAlphaPathInterpolator:Landroid/view/animation/PathInterpolator;

.field private mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

.field private mCurrentEntryValue:Ljava/lang/String;

.field private mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private mEntryRootView:Landroid/view/ViewGroup;

.field private mEntryView:Landroid/widget/FrameLayout;

.field private final mFadeOutPathInterpolator:Landroid/view/animation/PathInterpolator;

.field private final mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private mHoverAnimator:Landroid/animation/ValueAnimator;

.field private mIndicator:Landroid/widget/TextView;

.field private mInteractive:Lcom/transsion/camera/app/common/interactive/CommonInteractive;

.field private final mPathInterpolator:Landroid/view/animation/PathInterpolator;

.field private final mResources:Landroid/content/res/Resources;

.field private mScrollBarShown:Z

.field private mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

.field private mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

.field private mShutterPanelRootView:Landroid/view/View;

.field private mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private mSupportedEntries:[Ljava/lang/String;

.field private mSupportedEntryValues:[Ljava/lang/String;

.field private mTimeLapseTab:Landroidx/recyclerview/widget/RecyclerView;

.field private final mUIHandler:Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$UIHandler;


# direct methods
.method public static synthetic $r8$lambda$7zG5MnYzoQrMV34G7KxK1hv8LV0(Landroid/widget/FrameLayout$LayoutParams;Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->lambda$updateSettingUILayout$1(Landroid/widget/FrameLayout$LayoutParams;Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WzthpjlYDx8FsOHZh3cvaSGXgP8(Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->lambda$createEntryView$0(Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 44
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 67
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3e800000    # 0.25f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 4

    .line 118
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;-><init>()V

    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    .line 56
    new-instance v1, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$MyStatusChangeListener;

    invoke-direct {v1, v0}, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$MyStatusChangeListener;-><init>(Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$1;)V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const/4 v1, 0x0

    .line 65
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mScrollBarShown:Z

    .line 70
    new-instance v1, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 119
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mResources:Landroid/content/res/Resources;

    .line 120
    new-instance v1, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$UIHandler;

    invoke-direct {v1, p0, v0}, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$UIHandler;-><init>(Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$1;)V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mUIHandler:Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$UIHandler;

    .line 121
    new-instance v0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleSettingUISpec;

    invoke-direct {v0, p1}, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleSettingUISpec;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    .line 122
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const/high16 v0, 0x3e800000    # 0.25f

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p1, v0, v1, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 123
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const v0, 0x3ea8f5c3    # 0.33f

    const v3, 0x3f28f5c3    # 0.66f

    invoke-direct {p1, v0, v1, v3, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mAlphaPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 124
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const v0, 0x3ecccccd    # 0.4f

    const v3, 0x3dcccccd    # 0.1f

    invoke-direct {p1, v0, v1, v3, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mFadeOutPathInterpolator:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method static synthetic access$100()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 43
    sget-object v0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;Landroid/view/View;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->resetItemViewScale(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;)Ljava/lang/String;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mCurrentEntryValue:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;)Landroid/content/res/Resources;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mResources:Landroid/content/res/Resources;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->onValueChanged(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->showAutoSelectedInfo()V

    return-void
.end method

.method static synthetic access$300(Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->showHoldSteadyInfo()V

    return-void
.end method

.method static synthetic access$400(Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->updateTextColor()V

    return-void
.end method

.method static synthetic access$500(Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;)Landroid/widget/TextView;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mIndicator:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mTimeLapseTab:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$902(Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;Z)Z
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mScrollBarShown:Z

    return p1
.end method

.method private fadeIn()V
    .locals 3

    .line 411
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mTimeLapseTab:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getIndex(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 412
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mTimeLapseTab:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 413
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mTimeLapseTab:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 414
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mAlphaPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$1;-><init>(Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0x12c

    .line 435
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0x64

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private fadeOut()V
    .locals 3

    .line 439
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mTimeLapseTab:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f070748

    .line 440
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mFadeOutPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 441
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mFadeOutPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$2;-><init>(Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;)V

    .line 442
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0x12c

    .line 463
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private hideScrollBar()V
    .locals 3

    .line 395
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mScrollBarShown:Z

    if-nez v0, :cond_0

    return-void

    .line 396
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 v1, 0x51

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 397
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->fadeOut()V

    .line 398
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mShutterPanelRootView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 399
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 401
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

    if-eqz v0, :cond_2

    .line 402
    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->transitionShutterToRegular()V

    .line 404
    :cond_2
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mInteractive:Lcom/transsion/camera/app/common/interactive/CommonInteractive;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/interactive/CommonInteractive;->getModeRegionControl()Lcom/transsion/camera/app/common/IModeRegionControl;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 406
    invoke-interface {p0}, Lcom/transsion/camera/app/common/IModeRegionControl;->showModeRegion()V

    :cond_3
    return-void
.end method

.method private synthetic lambda$createEntryView$0(Landroid/view/View;)V
    .locals 1

    .line 174
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mTimeLapseTab:Landroidx/recyclerview/widget/RecyclerView;

    if-nez p1, :cond_0

    return-void

    .line 177
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mUIHandler:Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$UIHandler;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 178
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mIndicator:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 179
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mIndicator:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 180
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mTimeLapseTab:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->getCurrentActionState()I

    move-result p1

    const/16 v0, -0x65

    if-ne p1, v0, :cond_1

    .line 181
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->showScrollBar()V

    goto :goto_0

    .line 183
    :cond_1
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->hideScrollBar()V

    :goto_0
    return-void
.end method

.method private static synthetic lambda$updateSettingUILayout$1(Landroid/widget/FrameLayout$LayoutParams;Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 279
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 280
    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private onValueChanged(Ljava/lang/String;)V
    .locals 2

    .line 467
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mCurrentEntryValue:Ljava/lang/String;

    .line 468
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getIndex(Ljava/lang/String;)I

    move-result p1

    .line 469
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v0, :cond_0

    .line 470
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 472
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mIndicator:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mSupportedEntries:[Ljava/lang/String;

    aget-object p1, v1, p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 473
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->hideScrollBar()V

    .line 474
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mTimeLapseTab:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mSupportedEntryValues:[Ljava/lang/String;

    array-length v1, v1

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    .line 476
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mUIHandler:Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$UIHandler;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 477
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mUIHandler:Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$UIHandler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 478
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mCurrentEntryValue:Ljava/lang/String;

    const-string v0, "0"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 479
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mUIHandler:Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$UIHandler;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 481
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz p1, :cond_2

    .line 482
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private resetItemViewScale(Landroid/view/View;)V
    .locals 0

    const/high16 p0, 0x3f800000    # 1.0f

    .line 541
    invoke-virtual {p1, p0}, Landroid/view/View;->setScaleX(F)V

    .line 542
    invoke-virtual {p1, p0}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method private showAutoSelectedInfo()V
    .locals 3

    .line 135
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f10037e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_0

    .line 137
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_0
    return-void
.end method

.method private showHoldSteadyInfo()V
    .locals 3

    .line 128
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f100264

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_0

    .line 130
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_0
    return-void
.end method

.method private showScrollBar()V
    .locals 3

    .line 373
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mScrollBarShown:Z

    if-eqz v0, :cond_0

    return-void

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 v1, 0x50

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 375
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->fadeIn()V

    .line 376
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mInteractive:Lcom/transsion/camera/app/common/interactive/CommonInteractive;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/interactive/CommonInteractive;->getModeRegionControl()Lcom/transsion/camera/app/common/IModeRegionControl;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 378
    invoke-interface {v0}, Lcom/transsion/camera/app/common/IModeRegionControl;->hideModeRegion()V

    .line 380
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 382
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mIndicator:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mSupportedEntries:[Ljava/lang/String;

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 384
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mUIHandler:Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$UIHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 385
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mUIHandler:Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$UIHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 386
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

    if-eqz v0, :cond_3

    .line 387
    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->transitionShutterToSmall()V

    .line 389
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mShutterPanelRootView:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 390
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, p0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_4
    return-void
.end method

.method private updateTextColor()V
    .locals 4

    .line 142
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mTimeLapseTab:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 143
    :goto_0
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mTimeLapseTab:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 144
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mTimeLapseTab:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, -0x1

    .line 145
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 146
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 147
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0603ce

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/interactive/CommonInteractive;)Landroid/view/View;
    .locals 2

    .line 154
    sget-object v0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "createEntryView"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const v0, 0x7f0c01c5

    const/4 v1, 0x0

    .line 155
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mEntryView:Landroid/widget/FrameLayout;

    .line 156
    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 157
    iput-object p2, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mEntryRootView:Landroid/view/ViewGroup;

    .line 158
    iput-object p3, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mInteractive:Lcom/transsion/camera/app/common/interactive/CommonInteractive;

    .line 159
    invoke-virtual {p3}, Lcom/transsion/camera/app/common/interactive/CommonInteractive;->getShutterPanelRootView()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mShutterPanelRootView:Landroid/view/View;

    .line 160
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mEntryView:Landroid/widget/FrameLayout;

    const p2, 0x7f0904ab

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mIndicator:Landroid/widget/TextView;

    .line 161
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mEntryView:Landroid/widget/FrameLayout;

    const p2, 0x7f0904af

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mTimeLapseTab:Landroidx/recyclerview/widget/RecyclerView;

    .line 162
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 163
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object p2, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mEntryView:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 164
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 165
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mTimeLapseTab:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 166
    new-instance p1, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$TabAdapter;

    iget-object p2, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mSupportedEntryValues:[Ljava/lang/String;

    iget-object p3, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mSupportedEntries:[Ljava/lang/String;

    invoke-direct {p1, p0, p2, p3}, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$TabAdapter;-><init>(Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 167
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mTimeLapseTab:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 168
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    iget-object p2, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getIndex(Ljava/lang/String;)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    .line 170
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mIndicator:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mSupportedEntries:[Ljava/lang/String;

    aget-object p1, p3, p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mIndicator:Landroid/widget/TextView;

    const p2, 0x3f4ccccd    # 0.8f

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lcom/transsion/camera/utils/AnimationUtils;->pressSealAnimation(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V

    .line 173
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mIndicator:Landroid/widget/TextView;

    new-instance p2, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mTimeLapseTab:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mResources:Landroid/content/res/Resources;

    const p3, 0x7f070748

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    neg-int p2, p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 187
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mEntryView:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method protected doCreateEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getEntryRootView()Landroid/view/ViewGroup;
    .locals 0

    .line 323
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mEntryRootView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public getEntryView()Landroid/view/View;
    .locals 0

    .line 328
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mEntryView:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public bridge synthetic getExtraKey()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getExtraKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    const-string p0, "key_time_lapse"

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    .line 314
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 317
    :cond_0
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hideEntryView()V
    .locals 2

    .line 208
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 209
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mTimeLapseTab:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 213
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->hideScrollBar()V

    .line 216
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_2

    .line 217
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_2
    return-void
.end method

.method public notifyCameraOperateAction(I)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_1

    const/16 v0, 0xf

    if-eq p1, v0, :cond_0

    const/16 v0, 0x13

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1f

    if-eq p1, v0, :cond_1

    const/16 v0, 0x37

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 531
    :pswitch_0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mIndicator:Landroid/widget/TextView;

    if-eqz p0, :cond_2

    const/4 p1, 0x0

    .line 532
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 523
    :pswitch_1
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mIndicator:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    const/16 v0, 0x8

    .line 524
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 525
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mScrollBarShown:Z

    if-eqz p1, :cond_2

    .line 526
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->hideScrollBar()V

    goto :goto_0

    .line 519
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mUIHandler:Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$UIHandler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 520
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->hideScrollBar()V

    goto :goto_0

    .line 515
    :cond_1
    :pswitch_2
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mTimeLapseTab:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 516
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->hideScrollBar()V

    :cond_2
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x19
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onBackPressed()Z
    .locals 2

    .line 495
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mTimeLapseTab:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 496
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->hideScrollBar()V

    const/4 p0, 0x1

    return p0

    .line 499
    :cond_0
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onBackPressed()Z

    move-result p0

    return p0
.end method

.method public setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V
    .locals 0

    .line 250
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    return-void
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 2

    .line 333
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p1, :cond_0

    .line 335
    sget-object p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mDeviceSetting is null!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 338
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_1

    .line 339
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v1, "wide_camera"

    invoke-virtual {p1, v1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 340
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v1, "key_wide_camera_item_seleccted"

    invoke-virtual {p1, v1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 342
    :cond_1
    new-instance p1, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$TimeLapseWarningCallbackImpl;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$TimeLapseWarningCallbackImpl;-><init>(Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$1;)V

    .line 343
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    .line 345
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mCurrentEntryValue:Ljava/lang/String;

    .line 346
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSupport()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_2

    .line 348
    sget-object p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mDeviceSetting\'s support is null!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 352
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->createSupportedEntries(Ljava/util/List;)V

    .line 353
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryValues()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mSupportedEntryValues:[Ljava/lang/String;

    .line 354
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntries()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mSupportedEntries:[Ljava/lang/String;

    .line 356
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mSupportedEntryValues:[Ljava/lang/String;

    array-length p1, p1

    if-nez p1, :cond_3

    .line 357
    sget-object p1, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "support value is null! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getTitle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    return-void
.end method

.method public bridge synthetic setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .locals 0

    .line 363
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-void
.end method

.method public setShutterControl(Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;)V
    .locals 0

    .line 368
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->setShutterControl(Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;)V

    .line 369
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

    return-void
.end method

.method public setupEntryView()V
    .locals 3

    .line 197
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->setupEntryView()V

    .line 198
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 200
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mIndicator:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mSupportedEntries:[Ljava/lang/String;

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mIndicator:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 203
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mUIHandler:Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$UIHandler;

    const/4 v0, 0x4

    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public unInit()V
    .locals 3

    .line 223
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mScrollBarShown:Z

    if-eqz v0, :cond_1

    .line 224
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mInteractive:Lcom/transsion/camera/app/common/interactive/CommonInteractive;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/interactive/CommonInteractive;->getModeRegionControl()Lcom/transsion/camera/app/common/IModeRegionControl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 226
    invoke-interface {v0}, Lcom/transsion/camera/app/common/IModeRegionControl;->showModeRegion()V

    .line 228
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->hideScrollBar()V

    .line 231
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 232
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    .line 235
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_3

    .line 236
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 238
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mShutterPanelRootView:Landroid/view/View;

    if-eqz v0, :cond_4

    const/4 v2, 0x0

    .line 239
    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 241
    :cond_4
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

    if-eqz v0, :cond_5

    .line 242
    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->transitionShutterToRegular()V

    .line 244
    :cond_5
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->unInit()V

    .line 245
    iput-object v1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mEntryView:Landroid/widget/FrameLayout;

    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method

.method protected updateSettingUILayout(Z)V
    .locals 7

    .line 255
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    .line 256
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->getEntryView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 260
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getBottomBarHeight()I

    move-result v1

    .line 261
    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result v2

    .line 263
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 264
    iget v4, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 266
    iget v5, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_1

    .line 267
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f07073d

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v1, v2

    goto :goto_0

    .line 270
    :cond_1
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f07073e

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int v1, v2, v1

    .line 274
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    new-array p1, p1, [I

    const/4 v2, 0x0

    aput v4, p1, v2

    const/4 v2, 0x1

    aput v1, p1, v2

    .line 275
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x190

    .line 276
    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 277
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 278
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$$ExternalSyntheticLambda1;

    invoke-direct {v1, v3, v0}, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$$ExternalSyntheticLambda1;-><init>(Landroid/widget/FrameLayout$LayoutParams;Landroid/view/View;)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 282
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    .line 284
    :cond_2
    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 285
    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    return-void
.end method
