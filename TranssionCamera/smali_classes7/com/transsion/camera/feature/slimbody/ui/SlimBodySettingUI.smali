.class public Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;
.super Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;
.source "SlimBodySettingUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$UIHandler;
    }
.end annotation


# static fields
.field private static final DEFAULT_SLIMBODY:I = 0x0

.field private static final DURATION:I = 0x12c

.field private static final MSG_ON_FACEBEAUTY_VALUE_CHANGED:I = 0x2

.field private static final MSG_ON_SLIMBODY_VALUE_CHANGED:I = 0x1

.field public static final OPERATE_SETTING_UI_FB:I = 0x0

.field public static final OPERATE_SETTING_UI_SB:I = 0x1

.field private static final PRECISION:F = 0.01f

.field private static final RECYCLE_VIEW_ANIM_DURATION:I = 0x12c

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAlphaAnimator:Landroid/animation/ValueAnimator;

.field private final mAlphaInterpolator:Landroid/view/animation/PathInterpolator;

.field private mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mAnimShow:Z

.field private mBottomRootView:Landroid/view/View;

.field private mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

.field private mContractBar:Landroid/view/View;

.field private mContrastListener:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$ContrastListener;

.field private mDefaultOption:I

.field private mEntryRootView:Landroid/view/ViewGroup;

.field private mEntryView:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyEntryView;

.field private final mFadeOutInterpolator:Landroid/view/animation/PathInterpolator;

.field private mFeatureLayout:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

.field private mGenderValue:Ljava/lang/String;

.field private mIndicatorClickListener:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$BarClickListener;

.field private mInteractive:Lcom/transsion/camera/app/common/interactive/CommonInteractive;

.field private mModeArrowRoot:Landroid/view/View;

.field private mNeedShow:Z

.field private final mPathInterpolator:Landroid/view/animation/PathInterpolator;

.field private mSeekBar:Landroid/view/View;

.field private mSeekBarStatusListener:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$SeekBarStatusListener;

.field private mSeekbarChangeListener:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$SeekBarChangeListener;

.field private mSelfTimerCapturing:Z

.field private mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

.field private mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

.field private mShutterPanelRootView:Landroid/view/View;

.field private mSlimBodyBottomBarHeight:I

.field private mSlimBodyInfoListener:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot$SlimBodyInfoListener;

.field private mSlimBodyRoot:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;

.field private mSlimBodySetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private mState:I

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private mSwitchContainer:Landroid/view/View;

.field private mTopLayout:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;

.field private mTopRootView:Landroid/view/View;

.field private mTranslateAnimator2:Landroid/animation/ValueAnimator;

.field private mTranslateDistance2:F

.field private mTranslateListener:Landroid/animation/AnimatorListenerAdapter;

.field private mTranslateUpdateListener2:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private final mUIHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 43
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "SlimBodySettingUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 7

    .line 108
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;-><init>()V

    const/4 v0, 0x2

    .line 71
    iput v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mState:I

    const/4 v1, 0x0

    .line 72
    iput-boolean v1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mSelfTimerCapturing:Z

    const/4 v2, 0x1

    .line 73
    iput v2, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mDefaultOption:I

    const-string v3, "1"

    .line 76
    iput-object v3, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mGenderValue:Ljava/lang/String;

    .line 125
    new-instance v3, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$1;

    invoke-direct {v3, p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$1;-><init>(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;)V

    iput-object v3, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mContrastListener:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$ContrastListener;

    .line 178
    new-instance v3, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$2;

    invoke-direct {v3, p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$2;-><init>(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;)V

    iput-object v3, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mSeekbarChangeListener:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$SeekBarChangeListener;

    .line 187
    new-instance v3, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$3;

    invoke-direct {v3, p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$3;-><init>(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;)V

    iput-object v3, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mSeekBarStatusListener:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$SeekBarStatusListener;

    .line 194
    new-instance v3, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$4;

    invoke-direct {v3, p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$4;-><init>(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;)V

    iput-object v3, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mIndicatorClickListener:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$BarClickListener;

    .line 208
    new-instance v3, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$5;

    invoke-direct {v3, p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$5;-><init>(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;)V

    iput-object v3, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mSlimBodyInfoListener:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot$SlimBodyInfoListener;

    .line 280
    new-instance v3, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$6;

    invoke-direct {v3, p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$6;-><init>(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;)V

    iput-object v3, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mTranslateUpdateListener2:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 291
    new-instance v3, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$7;

    invoke-direct {v3, p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$7;-><init>(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;)V

    iput-object v3, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 304
    new-instance v3, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$8;

    invoke-direct {v3, p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$8;-><init>(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;)V

    iput-object v3, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mTranslateListener:Landroid/animation/AnimatorListenerAdapter;

    .line 831
    new-instance v3, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$9;

    invoke-direct {v3, p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$9;-><init>(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;)V

    iput-object v3, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 109
    sget-object v3, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v4, "[Constructor]"

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 110
    sget v3, Lcom/transsion/camera/feature/slimbody/R$dimen;->bottom_layout_height:I

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mSlimBodyBottomBarHeight:I

    .line 111
    sget v3, Lcom/transsion/camera/feature/slimbody/R$dimen;->slimbody_translate_anim_distance2:I

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mTranslateDistance2:F

    .line 112
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const/high16 v3, 0x3e800000    # 0.25f

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {p1, v3, v4, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 113
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const v3, 0x3ea8f5c3    # 0.33f

    const v6, 0x3f28f5c3    # 0.66f

    invoke-direct {p1, v3, v4, v6, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    .line 114
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const v3, 0x3ecccccd    # 0.4f

    const v6, 0x3dcccccd    # 0.1f

    invoke-direct {p1, v3, v4, v6, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mFadeOutInterpolator:Landroid/view/animation/PathInterpolator;

    new-array p1, v0, [F

    .line 115
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v5, 0x12c

    .line 116
    invoke-virtual {p1, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-array p1, v0, [F

    .line 118
    iget v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mTranslateDistance2:F

    neg-float v0, v0

    aput v0, p1, v1

    aput v4, p1, v2

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mTranslateAnimator2:Landroid/animation/ValueAnimator;

    .line 119
    invoke-virtual {p1, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 121
    new-instance p1, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$UIHandler;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$UIHandler;-><init>(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mUIHandler:Landroid/os/Handler;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$000()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 42
    sget-object v0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;Ljava/lang/String;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->doSlimBodyOnStatusChanged(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;)Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mTopLayout:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mDefaultOption:I

    return p0
.end method

.method static synthetic access$1200(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;Z)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->computeSwitchBarSelectedState(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;Z)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->notifyMultyFaceBeautyShowOrHide(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;)Landroid/view/View;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mBottomRootView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;FF)Z
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->isFloatEqual(FF)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1600(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->computeFilterRootVisibility()V

    return-void
.end method

.method static synthetic access$1700(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;)Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;)Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$ContrastListener;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mContrastListener:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$ContrastListener;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;Z)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->hideSettingUI(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;)Lcom/transsion/camera/app/common/setting/ISetting;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mSlimBodySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->hideAnimation()V

    return-void
.end method

.method static synthetic access$2100(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;)Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mFeatureLayout:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->showAnimation()V

    return-void
.end method

.method static synthetic access$2300(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;)Ljava/lang/String;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mGenderValue:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2302(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mGenderValue:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;)Landroid/view/View;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mSwitchContainer:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;)Lcom/transsion/camera/app/common/setting/StatusMonitor;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;)Landroid/view/View;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mContractBar:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;)Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mSlimBodyRoot:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;

    return-object p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;Z)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->notifyConflictUI(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;)Z
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->settingUIAnimShowOrHide()Z

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;Z)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->setAnimState(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;)Landroid/os/Handler;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mUIHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private addAnimatorListener()V
    .locals 2

    .line 317
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 318
    iget-object v1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mTranslateAnimator2:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 322
    iget-object v1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mTranslateUpdateListener2:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 323
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mTranslateAnimator2:Landroid/animation/ValueAnimator;

    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mTranslateListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_1
    return-void
.end method

.method private cancelAnimation()V
    .locals 1

    .line 424
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mTranslateAnimator2:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 429
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mTranslateAnimator2:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    return-void
.end method

.method private computeFilterRootVisibility()V
    .locals 3

    .line 272
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mBottomRootView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 273
    iget-boolean v2, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mAnimShow:Z

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    .line 274
    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 276
    :cond_1
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->setAnimState(Z)V

    return-void
.end method

.method private computeSwitchBarSelectedState(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 434
    :goto_0
    iput p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mState:I

    .line 435
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mTopLayout:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;

    if-eqz p0, :cond_1

    .line 436
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->notifySwitchBarSelected(I)V

    :cond_1
    return-void
.end method

.method private doSlimBodyOnStatusChanged(Ljava/lang/String;)V
    .locals 0

    .line 825
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mSlimBodyRoot:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;

    if-eqz p0, :cond_0

    .line 826
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->notifyValueChangedToUI(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private hideAnimation()V
    .locals 3

    .line 870
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mSwitchContainer:Landroid/view/View;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const-string v2, "alpha"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 871
    iget-object v1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mFadeOutInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0x12c

    .line 872
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 873
    new-instance v1, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$10;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$10;-><init>(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 879
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private hideEntryRootView()V
    .locals 2

    .line 642
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mEntryView:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyEntryView;

    if-eqz v0, :cond_1

    .line 643
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 645
    iput-boolean v1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mNeedShow:Z

    .line 646
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mEntryView:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyEntryView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 649
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mFeatureLayout:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->hideDialog()V

    return-void
.end method

.method private hideSettingUI(Z)V
    .locals 3

    .line 441
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mBottomRootView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 444
    :cond_0
    sget-object v0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[hideSettingUI] , isNeedHideContract:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 445
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->cancelAnimation()V

    .line 447
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mBottomRootView:Landroid/view/View;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 448
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 449
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mBottomRootView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 450
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mBottomRootView:Landroid/view/View;

    iget v1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mTranslateDistance2:F

    neg-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 453
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mModeArrowRoot:Landroid/view/View;

    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    const/4 v1, 0x0

    .line 454
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 455
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mSettingOptionControl:Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;

    invoke-interface {v0, v1, v1, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;->sinkUI(ZIZ)V

    .line 456
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mSwitchContainer:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 457
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mSwitchContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    if-eqz p1, :cond_3

    .line 460
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mTopLayout:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;

    if-eqz v0, :cond_3

    .line 461
    invoke-virtual {v0}, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->hideContractView()V

    .line 464
    :cond_3
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

    if-eqz p0, :cond_4

    if-nez p1, :cond_4

    .line 465
    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->transitionShutterToRegular()V

    :cond_4
    return-void
.end method

.method private initFeatureSwitch()V
    .locals 5

    .line 470
    iget v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mDefaultOption:I

    const-string v1, "0"

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    const-string v0, "1"

    .line 471
    :goto_0
    iget-object v2, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mSlimBodySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v2, :cond_1

    .line 472
    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ISetting;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 474
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const-string v4, "key_slimbody_facebeauty_switch"

    invoke-virtual {v2, v4, v0, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 477
    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 478
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->computeSwitchBarSelectedState(Z)V

    return-void
.end method

.method private isFloatEqual(FF)Z
    .locals 0

    sub-float/2addr p1, p2

    .line 264
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const p1, 0x3c23d70a    # 0.01f

    cmpg-float p0, p0, p1

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private notifyConflictUI(Z)V
    .locals 3

    .line 251
    sget-object v0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[notifyConflictUI], isSeekBarVisible:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string v0, "key_conflict_ui_state"

    if-eqz p1, :cond_0

    .line 253
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string p1, "value_facebeauty_ui_on"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 256
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string p1, "value_facebeauty_ui_off"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private notifyMultyFaceBeautyShowOrHide(Z)V
    .locals 1

    const-string v0, "key_slimbody_state"

    if-eqz p1, :cond_0

    .line 508
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string p1, "value_slimbody_state_on"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 510
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string p1, "value_slimbody_state_off"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private onModePanelStartReset()V
    .locals 2

    .line 725
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mTopLayout:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;

    if-eqz v0, :cond_0

    .line 726
    invoke-virtual {v0}, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->resetToInitState()V

    .line 727
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mTopLayout:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 728
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mTopLayout:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 730
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->showEntryRootView()V

    return-void
.end method

.method private registerKeyToMonitor(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 897
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 898
    iget-object v1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v2, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v1, v0, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private removeAnimatorListener()V
    .locals 2

    .line 329
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 330
    iget-object v1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mTranslateAnimator2:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 334
    iget-object v1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mTranslateUpdateListener2:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 335
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mTranslateAnimator2:Landroid/animation/ValueAnimator;

    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mTranslateListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_1
    return-void
.end method

.method private selectLatestPosition(Z)V
    .locals 3

    if-eqz p1, :cond_1

    .line 573
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mSlimBodySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p1

    .line 574
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mFeatureLayout:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    .line 575
    invoke-virtual {v0}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->defaultValueSlimBody()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_slimbody_latested_featureid"

    .line 574
    invoke-virtual {p1, v2, v0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-le p1, v0, :cond_0

    .line 577
    iget-object v2, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mTopLayout:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;

    invoke-virtual {v2, v0, v1, v1}, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->notifyState(IZZ)V

    .line 578
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->notifyMultyFaceBeautyShowOrHide(Z)V

    :cond_0
    if-eq p1, v1, :cond_1

    .line 581
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mFeatureLayout:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->resetProgressBarAndSetValue(I)V

    :cond_1
    return-void
.end method

.method private setAnimState(Z)V
    .locals 0

    .line 626
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mEntryView:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyEntryView;

    if-eqz p0, :cond_0

    .line 627
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyEntryView;->setAnimState(Z)V

    :cond_0
    return-void
.end method

.method private setEntryViewEnable(Z)V
    .locals 1

    .line 619
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mEntryView:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyEntryView;

    if-eqz v0, :cond_0

    .line 620
    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyEntryView;->setEnable(Z)V

    .line 621
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mBottomRootView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method private settingUIAnimShowOrHide()Z
    .locals 7

    .line 489
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mBottomRootView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mShutterPanelRootView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 490
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "0"

    .line 494
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->updateFeatureSwitch(Ljava/lang/String;)V

    .line 495
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mFeatureLayout:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->hideAlwaysHint()V

    .line 496
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mTopLayout:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->showContractView()V

    .line 497
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mTopLayout:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v2, v1}, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->notifyState(IZZ)V

    .line 498
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mSlimBodyRoot:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 500
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mBottomRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    float-to-double v3, v0

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v3, v5

    if-eqz v0, :cond_1

    move v1, v2

    .line 502
    :cond_1
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->showOrHide(Z)V

    return v2

    :cond_2
    :goto_0
    return v1
.end method

.method private showAnimation()V
    .locals 3

    .line 884
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mSwitchContainer:Landroid/view/View;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const-string v2, "alpha"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 885
    iget-object v1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0x12c

    .line 886
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 887
    new-instance v1, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$11;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$11;-><init>(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 893
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private showEntryRootView()V
    .locals 2

    .line 632
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mFeatureLayout:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    iget-object v1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mGenderValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->setGender(Ljava/lang/String;)V

    .line 633
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mEntryView:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyEntryView;

    if-eqz v0, :cond_0

    .line 634
    iget-boolean v1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mNeedShow:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 635
    iput-boolean v1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mNeedShow:Z

    .line 636
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private showOrHide(Z)V
    .locals 7

    .line 517
    sget-object v0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[showOrHide], animation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_b

    const/4 p1, 0x1

    .line 519
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->setAnimState(Z)V

    .line 520
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mBottomRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    const/4 v3, 0x0

    if-gtz v2, :cond_0

    move v2, p1

    goto :goto_0

    :cond_0
    move v2, v3

    .line 521
    :goto_0
    iput-boolean v2, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mAnimShow:Z

    if-eqz v2, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_1
    move v2, v1

    .line 523
    :goto_1
    iget-object v4, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    const/4 v5, 0x2

    new-array v6, v5, [F

    aput v0, v6, v3

    aput v2, v6, p1

    invoke-virtual {v4, v6}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 525
    iget-boolean v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mAnimShow:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mTranslateDistance2:F

    neg-float v0, v0

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    cmpg-float v2, v0, v1

    if-gez v2, :cond_3

    move v2, v1

    goto :goto_3

    .line 526
    :cond_3
    iget v2, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mTranslateDistance2:F

    neg-float v2, v2

    .line 527
    :goto_3
    iget-object v4, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mTranslateAnimator2:Landroid/animation/ValueAnimator;

    new-array v5, v5, [F

    aput v0, v5, v3

    aput v2, v5, p1

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 528
    iget-boolean v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mAnimShow:Z

    if-eqz v0, :cond_4

    .line 529
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x64

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 530
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mTranslateAnimator2:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 531
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    iget-object v4, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 532
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mTranslateAnimator2:Landroid/animation/ValueAnimator;

    iget-object v4, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_4

    .line 534
    :cond_4
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 535
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mTranslateAnimator2:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 536
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    iget-object v4, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mFadeOutInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 537
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mTranslateAnimator2:Landroid/animation/ValueAnimator;

    iget-object v4, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mFadeOutInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 539
    :goto_4
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 540
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mTranslateAnimator2:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 541
    iget-boolean v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mAnimShow:Z

    if-eqz v0, :cond_5

    .line 542
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mSettingOptionControl:Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;

    invoke-interface {v0, p1, v3, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;->sinkUI(ZIZ)V

    .line 543
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->hideAnimation()V

    goto :goto_5

    .line 545
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mSettingOptionControl:Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;

    invoke-interface {v0, v3, v3, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;->sinkUI(ZIZ)V

    .line 546
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->showAnimation()V

    .line 550
    :goto_5
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

    if-eqz v0, :cond_7

    .line 551
    iget-boolean v4, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mAnimShow:Z

    if-eqz v4, :cond_6

    .line 552
    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->transitionShutterToSmall()V

    goto :goto_6

    .line 554
    :cond_6
    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->transitionShutterToRegular()V

    :cond_7
    :goto_6
    cmpl-float v0, v2, v1

    if-nez v0, :cond_8

    move v0, p1

    goto :goto_7

    :cond_8
    move v0, v3

    :goto_7
    if-eqz v0, :cond_9

    .line 559
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->notifyMultyFaceBeautyShowOrHide(Z)V

    goto :goto_8

    .line 561
    :cond_9
    invoke-direct {p0, v3}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->notifyMultyFaceBeautyShowOrHide(Z)V

    .line 563
    :goto_8
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->selectLatestPosition(Z)V

    .line 564
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mModeArrowRoot:Landroid/view/View;

    if-eqz p1, :cond_b

    .line 565
    iget-boolean p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mAnimShow:Z

    if-eqz p0, :cond_a

    const/4 v3, 0x4

    :cond_a
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_b
    return-void
.end method

.method private unRegisterKeyToMonitor(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 903
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 904
    iget-object v1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v2, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v1, v0, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateFeatureSwitch(Ljava/lang/String;)V
    .locals 1

    .line 482
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mSlimBodySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "0"

    .line 483
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 484
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->computeSwitchBarSelectedState(Z)V

    :cond_0
    return-void
.end method

.method private updateInteractiveUI()V
    .locals 6

    .line 400
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result v0

    .line 401
    iget v1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mSlimBodyBottomBarHeight:I

    sub-int v1, v0, v1

    .line 402
    sget-object v2, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "topRootViewBottomPadding = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",bottomPadding = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-lez v1, :cond_0

    .line 404
    iget-object v2, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mBottomRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingStart()I

    move-result v2

    .line 405
    iget-object v3, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mBottomRootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingEnd()I

    move-result v3

    .line 406
    iget-object v4, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mBottomRootView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    .line 407
    iget-object v5, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mShutterPanelRootView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    if-le v1, v5, :cond_0

    .line 409
    iget-object v5, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mBottomRootView:Landroid/view/View;

    invoke-virtual {v5, v2, v4, v3, v1}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    if-lez v0, :cond_1

    .line 413
    iget-object v1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mTopRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    .line 414
    iget-object v2, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mTopRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingEnd()I

    move-result v2

    .line 415
    iget-object v3, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mTopRootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    .line 416
    iget-object v4, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mTopRootView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    if-le v0, v4, :cond_1

    .line 418
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mTopRootView:Landroid/view/View;

    invoke-virtual {p0, v1, v3, v2, v0}, Landroid/view/View;->setPadding(IIII)V

    :cond_1
    return-void
.end method


# virtual methods
.method public createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/interactive/CommonInteractive;)Landroid/view/View;
    .locals 3

    .line 588
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/CustomConfigUtil;->getDefaultOption()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mDefaultOption:I

    .line 589
    sget-object v0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[createEntryView] SlimBodyConfig mDefaultOption = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mDefaultOption:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 590
    iput-object p2, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mEntryRootView:Landroid/view/ViewGroup;

    .line 591
    iput-object p3, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mInteractive:Lcom/transsion/camera/app/common/interactive/CommonInteractive;

    .line 592
    sget p3, Lcom/transsion/camera/feature/slimbody/R$layout;->main_layout:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyEntryView;

    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mEntryView:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyEntryView;

    .line 593
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mInteractive:Lcom/transsion/camera/app/common/interactive/CommonInteractive;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/interactive/CommonInteractive;->getShutterPanelRootView()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mShutterPanelRootView:Landroid/view/View;

    .line 594
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mInteractive:Lcom/transsion/camera/app/common/interactive/CommonInteractive;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/interactive/CommonInteractive;->getModeArrowRoot()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mModeArrowRoot:Landroid/view/View;

    .line 595
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mEntryView:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyEntryView;

    sget p2, Lcom/transsion/camera/feature/slimbody/R$id;->bottom_root_view:I

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mBottomRootView:Landroid/view/View;

    .line 596
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mEntryView:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyEntryView;

    sget p2, Lcom/transsion/camera/feature/slimbody/R$id;->top_root_view:I

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mTopRootView:Landroid/view/View;

    .line 597
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mEntryView:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyEntryView;

    sget p2, Lcom/transsion/camera/feature/slimbody/R$id;->slimbody_root:I

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;

    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mSlimBodyRoot:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;

    .line 598
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mEntryView:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyEntryView;

    sget p2, Lcom/transsion/camera/feature/slimbody/R$id;->feature_layout:I

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mFeatureLayout:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    .line 599
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->addAnimatorListener()V

    .line 600
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mFeatureLayout:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    iget-object p2, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mSlimBodySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    .line 601
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mFeatureLayout:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    iget-object p2, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mSlimBodyInfoListener:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot$SlimBodyInfoListener;

    iget-object p3, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    invoke-virtual {p1, p2, p3}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->setListener(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot$SlimBodyInfoListener;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;)V

    .line 602
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mSlimBodyRoot:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;

    iget-object p2, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mSlimBodySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    .line 603
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mEntryView:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyEntryView;

    sget p2, Lcom/transsion/camera/feature/slimbody/R$id;->topbar_root:I

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;

    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mTopLayout:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;

    .line 604
    iget-object p2, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mIndicatorClickListener:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$BarClickListener;

    iget-object p3, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mSeekbarChangeListener:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$SeekBarChangeListener;

    iget-object v1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mContrastListener:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$ContrastListener;

    iget-object v2, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mSeekBarStatusListener:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$SeekBarStatusListener;

    invoke-virtual {p1, p2, p3, v1, v2}, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->setListener(Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$BarClickListener;Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$SeekBarChangeListener;Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$ContrastListener;Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$SeekBarStatusListener;)V

    .line 605
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mTopLayout:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;

    const/4 p2, 0x1

    invoke-virtual {p1, p2, p2, v0}, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->notifyState(IZZ)V

    .line 606
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mTopLayout:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->getContractBar()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mContractBar:Landroid/view/View;

    .line 607
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mTopLayout:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->getSwitchContainer()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mSwitchContainer:Landroid/view/View;

    .line 608
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mTopLayout:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->getSeekBar()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mSeekBar:Landroid/view/View;

    .line 609
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->updateInteractiveUI()V

    .line 610
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->hideSettingUI(Z)V

    .line 611
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->initFeatureSwitch()V

    .line 612
    iput-boolean p2, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mNeedShow:Z

    .line 613
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->setEntryViewEnable(Z)V

    .line 614
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->showEntryRootView()V

    .line 615
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mEntryView:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyEntryView;

    return-object p0
.end method

.method protected doCreateEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getEntryRootView()Landroid/view/ViewGroup;
    .locals 0

    .line 757
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mEntryRootView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public getEntryView()Landroid/view/View;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mEntryView:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyEntryView;

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

    const-string p0, "key_slimbody_info"

    return-object p0
.end method

.method public getKeys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 782
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "key_slimbody_info"

    .line 783
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "key_slimbody_face_beauty"

    .line 784
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "key_multi_contrast"

    .line 785
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "key_multi_face_state"

    .line 786
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "key_gender_attribute_value"

    .line 787
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public hideEntryView()V
    .locals 2

    .line 351
    sget-object v0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[hideEntryView]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 352
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->hideSettingUI(Z)V

    .line 354
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mFeatureLayout:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    if-eqz p0, :cond_0

    .line 355
    invoke-virtual {p0}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->hideAlwaysHint()V

    :cond_0
    return-void
.end method

.method public notifyCameraOperateAction(I)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    const/4 v1, 0x1

    if-eq p1, v1, :cond_6

    const/4 v2, 0x2

    if-eq p1, v2, :cond_5

    const/16 v2, 0x9

    if-eq p1, v2, :cond_6

    const/16 v2, 0x23

    if-eq p1, v2, :cond_4

    const/16 v2, 0x24

    if-eq p1, v2, :cond_3

    const/16 v2, 0x36

    if-eq p1, v2, :cond_2

    const/16 v2, 0x37

    if-eq p1, v2, :cond_6

    const/high16 v2, 0x3f800000    # 1.0f

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto/16 :goto_2

    .line 659
    :pswitch_0
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->showEntryRootView()V

    .line 660
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mSwitchContainer:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 661
    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 662
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mSwitchContainer:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 664
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mSeekBar:Landroid/view/View;

    if-eqz p0, :cond_8

    const/16 p1, 0x8

    .line 665
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 687
    :pswitch_1
    iput-boolean v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mSelfTimerCapturing:Z

    goto :goto_0

    .line 673
    :pswitch_2
    iget-boolean p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mSelfTimerCapturing:Z

    if-nez p1, :cond_1

    .line 674
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->showEntryRootView()V

    .line 676
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mTopLayout:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;

    if-eqz p0, :cond_8

    .line 677
    invoke-virtual {p0, v1, v1, v0}, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->notifyState(IZZ)V

    goto :goto_2

    .line 669
    :pswitch_3
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->hideSettingUI(Z)V

    .line 670
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->hideEntryRootView()V

    goto :goto_2

    .line 702
    :pswitch_4
    iput-boolean v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mSelfTimerCapturing:Z

    .line 703
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->setEnable(Z)V

    .line 704
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->showEntryRootView()V

    .line 705
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mTopLayout:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;

    if-eqz p1, :cond_8

    .line 706
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 707
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mTopLayout:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    goto :goto_2

    .line 681
    :pswitch_5
    iput-boolean v1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mSelfTimerCapturing:Z

    .line 682
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->setEnable(Z)V

    goto :goto_1

    .line 691
    :cond_2
    :goto_0
    :pswitch_6
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mFeatureLayout:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->hideDialog()V

    .line 692
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->setEnable(Z)V

    goto :goto_2

    .line 711
    :cond_3
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->showEntryRootView()V

    goto :goto_2

    .line 656
    :cond_4
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->hideEntryRootView()V

    goto :goto_2

    .line 684
    :cond_5
    :goto_1
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->hideEntryRootView()V

    goto :goto_2

    .line 719
    :cond_6
    :pswitch_7
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->setEnable(Z)V

    goto :goto_2

    .line 695
    :cond_7
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->setEnable(Z)V

    .line 696
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mFeatureLayout:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->hideDialog()V

    .line 697
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_8

    .line 698
    invoke-virtual {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->getKeys()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->unRegisterKeyToMonitor(Ljava/util/List;)V

    :cond_8
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x19
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()Z
    .locals 4

    .line 362
    iget-boolean v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mSelfTimerCapturing:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mEntryView:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyEntryView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 368
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mBottomRootView:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 371
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mSlimBodyRoot:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;

    const/4 v2, 0x2

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->onBackPressed()I

    move-result v0

    goto :goto_0

    :cond_3
    move v0, v2

    :goto_0
    const/4 v3, 0x1

    if-eq v0, v3, :cond_5

    if-eq v0, v2, :cond_4

    move v3, v1

    goto :goto_1

    .line 375
    :cond_4
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mFeatureLayout:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->hideAlwaysHint()V

    .line 376
    invoke-direct {p0, v3}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->showOrHide(Z)V

    goto :goto_1

    .line 379
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mTopLayout:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;

    if-eqz v0, :cond_6

    .line 380
    invoke-virtual {v0, v3, v3, v3}, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->notifyState(IZZ)V

    .line 381
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mFeatureLayout:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->hideAlwaysHint()V

    .line 382
    invoke-direct {p0, v3}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->showOrHide(Z)V

    .line 387
    :cond_6
    :goto_1
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->notifyMultyFaceBeautyShowOrHide(Z)V

    return v3
.end method

.method public restoreInteractiveView()V
    .locals 1

    .line 814
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mSlimBodyRoot:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;

    if-eqz v0, :cond_0

    .line 815
    invoke-virtual {v0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->onBackPressed()I

    :cond_0
    const/4 v0, 0x0

    .line 817
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->hideSettingUI(Z)V

    .line 818
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->onModePanelStartReset()V

    return-void
.end method

.method public setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V
    .locals 0

    .line 341
    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    return-void
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 0

    return-void
.end method

.method public setDeviceSettingData(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;",
            ">;)V"
        }
    .end annotation

    .line 793
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->setDeviceSettingData(Ljava/util/List;)V

    if-nez p1, :cond_0

    .line 795
    sget-object p1, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDeviceSettingData is null,key = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 798
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

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;

    .line 799
    sget-object v1, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDeviceSettingData key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",iSetting = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->iSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 800
    iget-object v1, v0, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->key:Ljava/lang/String;

    const-string v2, "key_slimbody_info"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 801
    iget-object v0, v0, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->iSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    iput-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mSlimBodySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    goto :goto_0

    .line 804
    :cond_2
    invoke-virtual {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->getKeys()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->registerKeyToMonitor(Ljava/util/List;)V

    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    .line 767
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->setEntryViewEnable(Z)V

    return-void
.end method

.method public bridge synthetic setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .locals 0

    .line 911
    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-void
.end method

.method public setShutterControl(Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;)V
    .locals 0

    .line 916
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->setShutterControl(Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;)V

    .line 917
    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

    return-void
.end method

.method public setupEntryView()V
    .locals 1

    .line 346
    sget-object p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[setupEntryView]"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public unInit()V
    .locals 2

    .line 735
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->unInit()V

    .line 736
    sget-object v0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[unInit]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 737
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mContrastListener:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$ContrastListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$ContrastListener;->closeContrast(Z)V

    .line 738
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->hideEntryRootView()V

    const/4 v0, 0x0

    .line 739
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->hideSettingUI(Z)V

    .line 740
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mSlimBodyRoot:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;

    if-eqz v0, :cond_0

    .line 741
    invoke-virtual {v0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->unInit()V

    .line 743
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_1

    .line 744
    invoke-virtual {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->getKeys()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->unRegisterKeyToMonitor(Ljava/util/List;)V

    .line 746
    :cond_1
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->removeAnimatorListener()V

    const/4 v0, 0x0

    .line 747
    iput-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->mEntryView:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyEntryView;

    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .locals 0

    .line 762
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->updateInteractiveUI()V

    return-void
.end method
