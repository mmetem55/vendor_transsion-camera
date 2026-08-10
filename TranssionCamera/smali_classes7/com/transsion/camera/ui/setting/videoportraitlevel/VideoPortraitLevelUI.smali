.class public Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;
.super Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;
.source "VideoPortraitLevelUI.java"


# static fields
.field private static final MSG_HIDE_ALL_VIEW:I = 0x12c

.field private static final MSG_HIDE_ALL_VIEW_SUDDENLY:I = 0x1f4

.field private static final MSG_ON_VIDEO_PORTRAIT_LEVEL_CHANGED:I = 0x65

.field private static final MSG_ON_VIDEO_PORTRAIT_SWITCH_CHANGED:I = 0x64

.field private static final MSG_PORTRAIT_LEVEL_CHANGED:I = 0x258

.field private static final MSG_REMOVE_ALL_VIEW:I = 0x190

.field private static final MSG_SETTING_UI_CALL_BACK_FROM_RELATION:I = 0x1f5

.field private static final MSG_SHOW_ALL_VIEW:I = 0xc8

.field private static final SETTING_KEY:Ljava/lang/String; = "key_video_portrait_level"

.field private static final STATE_TO_SHOW_LEVEL_BAR:I = 0x1

.field private static final STATE_TO_SHOW_SWITCH_BAR:I

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private DEFAULT_VALUE:Ljava/lang/String;

.field private DURATION:I

.field private ROTATE_DURATION:I

.field private mAlphaAnimator:Landroid/animation/ValueAnimator;

.field private mAnimatorSet:Landroid/animation/AnimatorSet;

.field private mBottomMargin:I

.field private mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

.field private mCurrentEntryValue:Ljava/lang/String;

.field private mCurrentUIState:I

.field private mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private mEnable:Z

.field private mEntryRootView:Landroid/view/ViewGroup;

.field private mEntryView:Landroid/view/View;

.field private mInterpolator:Landroid/view/animation/PathInterpolator;

.field private mIsLevelBarShowing:Z

.field private mIsVideoPortraitOn:Z

.field private mLevelBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

.field private mLevelBarRootView:Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitBarView;

.field private mNeedDoProgressChanged:Z

.field private mPreviewViewRect:Landroid/graphics/Rect;

.field private mProgress:I

.field private mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

.field private mSettingMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

.field private mSupportedEntryValues:[Ljava/lang/String;

.field private final mSwitchDataCallbackImpl:Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

.field private mTranslateAnimator:Landroid/animation/ValueAnimator;

.field private mTranslateDistance:F

.field private mUIHandler:Landroid/os/Handler;

.field private mVideoPortraitSwitchSetting:Lcom/transsion/camera/app/common/setting/ISetting;


# direct methods
.method public static synthetic $r8$lambda$8UH52Utphu7qnsdSwn-_IJjCViE(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->lambda$addAnimatorListener$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eY7e8RIyTIDt1bIj0wCFK5Suumc(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->lambda$addAnimatorListener$2(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iGoku0xKX6IQk56GhYAz_4vJBcw(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->lambda$createEntryView$0(IZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$xLhyDwalSPUDUf0nAPQ86mGEBrI(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;Ljava/lang/Object;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->lambda$new$3(Ljava/lang/Object;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 49
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "VideoPortraitLevelUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 4

    .line 146
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;-><init>()V

    const/4 v0, 0x0

    .line 62
    iput v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mCurrentUIState:I

    const/16 v1, 0x12c

    .line 64
    iput v1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->DURATION:I

    const/16 v1, 0x96

    .line 65
    iput v1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->ROTATE_DURATION:I

    .line 72
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mPreviewViewRect:Landroid/graphics/Rect;

    .line 88
    new-instance v1, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI$1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI$1;-><init>(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;)V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 100
    new-instance v1, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI$2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI$2;-><init>(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;)V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mUIHandler:Landroid/os/Handler;

    const-string v1, "60"

    .line 138
    iput-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->DEFAULT_VALUE:Ljava/lang/String;

    .line 140
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mIsVideoPortraitOn:Z

    .line 141
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mIsLevelBarShowing:Z

    .line 144
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mNeedDoProgressChanged:Z

    .line 496
    new-instance v1, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;)V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mSwitchDataCallbackImpl:Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    .line 147
    new-instance v1, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelSettingUISpec;

    invoke-direct {v1, p1}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelSettingUISpec;-><init>(Landroid/content/res/Resources;)V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    const v1, 0x7f07077b

    .line 148
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mTranslateDistance:F

    const/4 p1, 0x2

    new-array v1, p1, [F

    .line 149
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 150
    iget v2, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->DURATION:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 151
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array p1, p1, [F

    .line 152
    iget v1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mTranslateDistance:F

    neg-float v1, v1

    aput v1, p1, v0

    const/4 v0, 0x1

    const/4 v1, 0x0

    aput v1, p1, v0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    .line 153
    iget v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->DURATION:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 154
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 155
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->addAnimatorListener()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$000(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;)Landroid/os/Handler;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mUIHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;Ljava/lang/String;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->doOnVideoPortraitSwitchChanged(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;)Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitBarView;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mLevelBarRootView:Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitBarView;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;)Lcom/transsion/camera/app/common/setting/StatusMonitor;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mSettingMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->showAllView()V

    return-void
.end method

.method static synthetic access$300(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->hideAllView()V

    return-void
.end method

.method static synthetic access$400(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->removeAllView()V

    return-void
.end method

.method static synthetic access$500(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->hideAllViewSuddenly()V

    return-void
.end method

.method static synthetic access$600(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;)Z
    .locals 0

    .line 48
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mIsLevelBarShowing:Z

    return p0
.end method

.method static synthetic access$602(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;Z)Z
    .locals 0

    .line 48
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mIsLevelBarShowing:Z

    return p1
.end method

.method static synthetic access$700(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->hideLevelBar()V

    return-void
.end method

.method static synthetic access$800(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;)I
    .locals 0

    .line 48
    iget p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mProgress:I

    return p0
.end method

.method static synthetic access$900(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;I)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->doProgressChanged(I)V

    return-void
.end method

.method private addAnimatorListener()V
    .locals 2

    .line 275
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 276
    new-instance v1, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 285
    new-instance v1, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 291
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI$3;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI$3;-><init>(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_1
    return-void
.end method

.method private doOnVideoPortraitLevelChanged(Ljava/lang/String;)V
    .locals 4

    .line 615
    sget-object v0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doOnVideoPortraitLevelChanged value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " --> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 616
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mCurrentEntryValue:Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "0"

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v3

    :goto_1
    if-eqz p1, :cond_2

    .line 617
    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v1, v3

    .line 618
    :cond_3
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mCurrentEntryValue:Ljava/lang/String;

    if-eqz v0, :cond_4

    if-nez v1, :cond_4

    .line 620
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mVideoPortraitSwitchSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string p1, "on"

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    if-eqz v1, :cond_5

    if-nez v0, :cond_5

    .line 622
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mVideoPortraitSwitchSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string p1, "off"

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    :cond_5
    :goto_2
    return-void
.end method

.method private doOnVideoPortraitSwitchChanged(Ljava/lang/String;)V
    .locals 3

    .line 592
    sget-object v0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doOnVideoPortraitSwitchChanged value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string v0, "on"

    .line 607
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 608
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mIsVideoPortraitOn:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 610
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mIsVideoPortraitOn:Z

    :goto_0
    return-void
.end method

.method private doProgressChanged(I)V
    .locals 3

    .line 188
    sget-object v0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doProgressChanged progress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 189
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    .line 190
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 191
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->doOnVideoPortraitLevelChanged(Ljava/lang/String;)V

    return-void
.end method

.method private getCurrentIntValue()I
    .locals 0

    .line 647
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private hideAllView()V
    .locals 3

    .line 570
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mIsVideoPortraitOn:Z

    if-eqz v0, :cond_0

    .line 571
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mSettingMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_conflict_ui_state"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    const-string v2, "value_videoportrait_view_hide"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 572
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mIsLevelBarShowing:Z

    if-eqz v0, :cond_0

    .line 573
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->hideLevelBar()V

    :cond_0
    return-void
.end method

.method private hideAllViewSuddenly()V
    .locals 3

    const/4 v0, 0x0

    .line 579
    iput v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mCurrentUIState:I

    .line 580
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mLevelBarRootView:Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitBarView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 581
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mLevelBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 582
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mIsVideoPortraitOn:Z

    if-eqz v0, :cond_0

    .line 583
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mSettingMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_conflict_ui_state"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    const-string v2, "value_videoportrait_view_hide"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 584
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mIsLevelBarShowing:Z

    if-eqz v0, :cond_0

    .line 585
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mLevelBarRootView:Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitBarView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 586
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mSettingMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string v0, "value_videoportrait_bar_hide"

    invoke-virtual {p0, v1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private hideLevelBar()V
    .locals 7

    .line 534
    sget-object v0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "hideLevelBar."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 535
    iput v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mCurrentUIState:I

    .line 536
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mLevelBarRootView:Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitBarView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v1

    .line 538
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    const/4 v3, 0x2

    new-array v4, v3, [F

    aput v1, v4, v0

    const/4 v1, 0x1

    const/4 v5, 0x0

    aput v5, v4, v1

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 539
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    iget-object v4, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 542
    iget v2, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mTranslateDistance:F

    neg-float v2, v2

    .line 543
    iget-object v4, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    new-array v6, v3, [F

    aput v5, v6, v0

    aput v2, v6, v1

    invoke-virtual {v4, v6}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 544
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object v4, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 546
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 547
    iget v4, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->ROTATE_DURATION:I

    int-to-long v4, v4

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 548
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v3, v3, [Landroid/animation/Animator;

    iget-object v4, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    aput-object v4, v3, v0

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    aput-object v0, v3, v1

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 549
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI$4;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI$4;-><init>(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 555
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 v1, 0x82

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 556
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private synthetic lambda$addAnimatorListener$1(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 277
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 278
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mLevelBarRootView:Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitBarView;

    if-eqz p0, :cond_0

    .line 279
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$addAnimatorListener$2(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 286
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 287
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mLevelBarRootView:Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitBarView;

    if-eqz p0, :cond_0

    neg-float p1, p1

    .line 288
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$createEntryView$0(IZ)V
    .locals 1

    .line 173
    iput p1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mProgress:I

    .line 174
    sget-object p1, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onProgressChanged mProgress: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mProgress:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mEnable: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mEnable:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 175
    iget-boolean p2, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mEnable:Z

    if-nez p2, :cond_0

    const-string p2, "Seek bar disable, return"

    .line 176
    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 177
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mNeedDoProgressChanged:Z

    return-void

    .line 180
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mUIHandler:Landroid/os/Handler;

    const/16 p2, 0x258

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 181
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private synthetic lambda$new$3(Ljava/lang/Object;I)V
    .locals 0

    const/16 p1, 0x64

    if-ne p1, p2, :cond_0

    .line 498
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mUIHandler:Landroid/os/Handler;

    const/16 p2, 0x1f5

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 499
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method private reOpenToSavedValue()V
    .locals 4

    .line 262
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v0, :cond_1

    .line 263
    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    .line 264
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    .line 265
    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISetting;->getDefaultValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "key_video_portrait_level"

    .line 264
    invoke-virtual {v0, v3, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    .line 266
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 267
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    .line 269
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mProgress:I

    .line 270
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private removeAllView()V
    .locals 1

    const/4 v0, 0x0

    .line 639
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mIsLevelBarShowing:Z

    .line 640
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mLevelBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x8

    .line 643
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private resetAnimationState()V
    .locals 2

    .line 627
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 628
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 629
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 631
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mIsLevelBarShowing:Z

    if-eqz v0, :cond_1

    .line 632
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mLevelBarRootView:Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitBarView;

    iget v1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mTranslateDistance:F

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 633
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mLevelBarRootView:Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitBarView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_1
    return-void
.end method

.method private showAllView()V
    .locals 3

    .line 560
    sget-object v0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showAllView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mIsVideoPortraitOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 561
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mIsVideoPortraitOn:Z

    if-eqz v0, :cond_0

    .line 562
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mSettingMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_conflict_ui_state"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    const-string v2, "value_videoportrait_view_show"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 563
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mIsLevelBarShowing:Z

    if-eqz v0, :cond_0

    .line 564
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->showLevelBar()V

    :cond_0
    return-void
.end method

.method private showLevelBar()V
    .locals 7

    .line 505
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mLevelBarRootView:Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitBarView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 506
    sget-object p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "showLevelBar return because already shown."

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 509
    :cond_0
    sget-object v0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "showLevelBar."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 510
    iput v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mCurrentUIState:I

    .line 511
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mSettingMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v2, "key_conflict_ui_state"

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v1

    const-string v3, "value_videoportrait_bar_show"

    invoke-virtual {v1, v2, v3}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 512
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 v2, 0x81

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 513
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mLevelBarRootView:Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitBarView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 514
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mLevelBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 516
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mLevelBarRootView:Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitBarView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v1

    const/high16 v3, 0x3f800000    # 1.0f

    .line 518
    iget-object v4, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    const/4 v5, 0x2

    new-array v6, v5, [F

    aput v1, v6, v2

    aput v3, v6, v0

    invoke-virtual {v4, v6}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 519
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 521
    iget v1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mTranslateDistance:F

    neg-float v1, v1

    const/4 v3, 0x0

    .line 523
    iget-object v4, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    new-array v6, v5, [F

    aput v1, v6, v2

    aput v3, v6, v0

    invoke-virtual {v4, v6}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 524
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 526
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 527
    iget v3, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->ROTATE_DURATION:I

    int-to-long v3, v3

    invoke-virtual {v1, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 528
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v3, v5, [Landroid/animation/Animator;

    iget-object v4, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    aput-object v4, v3, v2

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    aput-object v2, v3, v0

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 529
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private updateLevelBarProgress(I)V
    .locals 2

    .line 214
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mLevelBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    const/16 v0, 0x64

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1, p1}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->updateSeekBarData(IIII)V

    return-void
.end method


# virtual methods
.method public createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/interactive/CommonInteractive;)Landroid/view/View;
    .locals 1

    .line 165
    iput-object p2, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mEntryRootView:Landroid/view/ViewGroup;

    const p3, 0x7f0c01d6

    const/4 v0, 0x0

    .line 166
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mEntryView:Landroid/view/View;

    const p2, 0x7f0904f4

    .line 167
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitBarView;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mLevelBarRootView:Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitBarView;

    const p2, 0x7f0904f5

    .line 168
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mLevelBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    .line 170
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const/high16 p2, 0x3e800000    # 0.25f

    const/4 p3, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p1, p2, p3, p3, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mInterpolator:Landroid/view/animation/PathInterpolator;

    .line 172
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mLevelBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    new-instance p2, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;)V

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->setOnSeekBarChangeListener(Lcom/transsion/camera/app/ui/widget/BiDiSeekBar$OnSeekBarChangeListener;)V

    .line 184
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mEntryView:Landroid/view/View;

    return-object p0
.end method

.method protected doCreateEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getEntryRootView()Landroid/view/ViewGroup;
    .locals 0

    .line 224
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mEntryRootView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public getEntryView()Landroid/view/View;
    .locals 0

    .line 219
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mEntryView:Landroid/view/View;

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

    const-string p0, "key_video_portrait_level"

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

    .line 358
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "key_video_portrait"

    .line 359
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 2

    .line 365
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSupport()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 370
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 374
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 371
    :cond_2
    :goto_0
    sget-object v0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "supportList is null"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 372
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->DEFAULT_VALUE:Ljava/lang/String;

    return-object p0

    .line 366
    :cond_3
    :goto_1
    sget-object v0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "deviceSetting is null"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 367
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->DEFAULT_VALUE:Ljava/lang/String;

    return-object p0
.end method

.method public hideEntryView()V
    .locals 2

    .line 313
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 314
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    :cond_0
    const/4 v0, 0x0

    .line 316
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mIsLevelBarShowing:Z

    .line 317
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mLevelBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 318
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->hideLevelBar()V

    return-void
.end method

.method public needShowOptionBar()Z
    .locals 0

    .line 487
    iget p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mCurrentUIState:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public notifyCameraOperateAction(I)V
    .locals 3

    const/4 v0, 0x3

    const/16 v1, 0xc8

    if-eq p1, v0, :cond_2

    const/16 v0, 0x9

    if-eq p1, v0, :cond_2

    const/16 v0, 0xf

    const/16 v2, 0x1f4

    if-eq p1, v0, :cond_1

    const/16 v0, 0x13

    if-eq p1, v0, :cond_0

    const/16 v0, 0x4c

    if-eq p1, v0, :cond_2

    const/16 v0, 0x83

    if-eq p1, v0, :cond_0

    const/16 v0, 0x19

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1a

    if-eq p1, v0, :cond_2

    const/16 v0, 0x34

    if-eq p1, v0, :cond_1

    const/16 v0, 0x35

    if-eq p1, v0, :cond_2

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 470
    :pswitch_0
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 471
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {p0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 475
    :cond_0
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mIsLevelBarShowing:Z

    if-eqz p1, :cond_3

    .line 476
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->hideLevelBar()V

    const/4 p1, 0x0

    .line 477
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mIsLevelBarShowing:Z

    goto :goto_0

    .line 465
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mLevelBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    invoke-virtual {p1}, Landroid/view/View;->onCancelPendingInputEvents()V

    .line 466
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 467
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {p0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 458
    :cond_2
    :pswitch_1
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 459
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_3
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x48
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onBackPressed()Z
    .locals 2

    .line 425
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mIsLevelBarShowing:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 426
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->hideLevelBar()V

    .line 427
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mIsLevelBarShowing:Z

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public onSettingOptionToggle(Ljava/lang/String;)V
    .locals 3

    .line 229
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onSettingOptionToggle(Ljava/lang/String;)V

    const-string v0, "key_video_portrait"

    .line 230
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 231
    sget-object p1, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSettingOptionToggle mIsLevelBarShowing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mIsLevelBarShowing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 232
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "onSettingOptionToggle return because animation is running."

    .line 233
    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 236
    :cond_0
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mIsLevelBarShowing:Z

    if-eqz p1, :cond_1

    .line 237
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mIsLevelBarShowing:Z

    .line 238
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->hideLevelBar()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 240
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mIsLevelBarShowing:Z

    .line 241
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->showLevelBar()V

    .line 243
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mVideoPortraitSwitchSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p1, :cond_5

    .line 244
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p1

    .line 245
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    .line 246
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "0"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 247
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mVideoPortraitSwitchSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p1, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 248
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->reOpenToSavedValue()V

    .line 250
    :cond_3
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->getCurrentIntValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->updateLevelBarProgress(I)V

    goto :goto_0

    .line 254
    :cond_4
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mIsLevelBarShowing:Z

    if-eqz p1, :cond_5

    .line 255
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mIsLevelBarShowing:Z

    .line 256
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->hideLevelBar()V

    :cond_5
    :goto_0
    return-void
.end method

.method public onSingleTapUp(FF)Z
    .locals 3

    .line 435
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mPreviewViewRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    const/4 v2, 0x0

    if-ltz v1, :cond_1

    iget v1, v0, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    cmpl-float p1, p1, v1

    if-gtz p1, :cond_1

    iget p1, v0, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    cmpg-float p1, p2, p1

    if-ltz p1, :cond_1

    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    cmpl-float p1, p2, p1

    if-lez p1, :cond_0

    goto :goto_0

    .line 439
    :cond_0
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mIsLevelBarShowing:Z

    if-eqz p1, :cond_1

    .line 440
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mIsLevelBarShowing:Z

    .line 441
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->hideLevelBar()V

    :cond_1
    :goto_0
    return v2
.end method

.method public setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V
    .locals 0

    .line 492
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V

    .line 493
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    return-void
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 2

    .line 379
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p1, :cond_0

    .line 381
    sget-object p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mDeviceSetting is null!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 385
    :cond_0
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mCurrentEntryValue:Ljava/lang/String;

    .line 387
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSupport()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_1

    .line 389
    sget-object p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mDeviceSetting\'s support is null!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 392
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->createSupportedEntries(Ljava/util/List;)V

    .line 393
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mSettingMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_2

    .line 394
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v1, "key_video_portrait"

    invoke-virtual {p1, v1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 395
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mSettingMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v1, "key_video_portrait_level"

    invoke-virtual {p1, v1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 398
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mVideoPortraitSwitchSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p1, :cond_3

    .line 399
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mSwitchDataCallbackImpl:Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/setting/ISetting;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    :cond_3
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

    .line 405
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->setDeviceSettingData(Ljava/util/List;)V

    if-nez p1, :cond_0

    .line 407
    sget-object p1, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDeviceSettingData is null,key = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 410
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

    .line 411
    sget-object v1, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

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

    .line 412
    iget-object v1, v0, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->key:Ljava/lang/String;

    const-string v2, "key_video_portrait"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 413
    iget-object v0, v0, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->iSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mVideoPortraitSwitchSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setEnable(Z)V
    .locals 3

    .line 340
    sget-object v0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEnable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mProgress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mProgress:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mNeedDoProgressChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mNeedDoProgressChanged:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 342
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mEnable:Z

    if-eqz p1, :cond_0

    .line 343
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mNeedDoProgressChanged:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 344
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mNeedDoProgressChanged:Z

    .line 345
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mUIHandler:Landroid/os/Handler;

    const/16 v0, 0x258

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 346
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public bridge synthetic setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .locals 0

    .line 420
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mSettingMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-void
.end method

.method public setupEntryView()V
    .locals 3

    .line 196
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->setupEntryView()V

    .line 197
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mEntryRootView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/16 v2, 0xd

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/UIUtils;->dp2Px(Landroid/content/res/Resources;I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mBottomMargin:I

    .line 198
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mLevelBarRootView:Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitBarView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 199
    iget v1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mBottomMargin:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 200
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mLevelBarRootView:Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitBarView;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 202
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->getCurrentIntValue()I

    move-result v0

    .line 203
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->updateLevelBarProgress(I)V

    .line 205
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string v1, "key_video_portrait"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 206
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mIsVideoPortraitOn:Z

    .line 207
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->reOpenToSavedValue()V

    .line 208
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->getCurrentIntValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->updateLevelBarProgress(I)V

    .line 209
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mUIHandler:Landroid/os/Handler;

    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public unInit()V
    .locals 3

    .line 323
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mVideoPortraitSwitchSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 324
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mSettingMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_1

    .line 327
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v2, "key_video_portrait"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 328
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mSettingMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v2, "key_video_portrait_level"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 330
    :cond_1
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->unInit()V

    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .locals 0

    .line 335
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method
