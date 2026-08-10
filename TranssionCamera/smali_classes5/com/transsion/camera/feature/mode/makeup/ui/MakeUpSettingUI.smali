.class public Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;
.super Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;
.source "MakeUpSettingUI.java"


# static fields
.field private static final DURATION:I = 0xc8

.field private static final PRECISION:F = 0.01f

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mAlphaAnimator:Landroid/animation/ValueAnimator;

.field private final mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mAnimShow:Z

.field private final mBarClickListener:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$BarClickListener;

.field private final mBottomUIDefaultHeight:I

.field private final mContrastListener:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$ContrastListener;

.field private mCurrentUIType:I

.field private mEntryRootView:Landroid/view/ViewGroup;

.field private mEntryView:Landroid/view/View;

.field private mFaceBeautyRoot:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;

.field private mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private mLowLight:Z

.field private mMakeUpRoot:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;

.field private final mModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

.field private mNeedShow:Z

.field private mNeedToMonitorSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private final mSeekBarChangeListener:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$SeekBarChangeListener;

.field private final mSeekBarStatusListener:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$SeekBarStatusListener;

.field private mSelfTimerCapturing:Z

.field private mSettingDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;",
            ">;"
        }
    .end annotation
.end field

.field private final mSinkTranslateDistance:I

.field private mSlimBodyRoot:Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private final mTranslateAnimator:Landroid/animation/ValueAnimator;

.field private final mTranslateDistance:F

.field private final mTranslateUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

.field private makeUpBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpBottomUI;

.field private makeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;


# direct methods
.method public static synthetic $r8$lambda$2b9CNj---q5cPV1XYVbYZU2X5gw(Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->lambda$new$0(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$ulRnvoWJDhM7KGC-Ycg9TZ6XyaY(Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->lambda$ringScreenLightUpdateUI$1()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 36
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 6

    .line 207
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mSelfTimerCapturing:Z

    .line 64
    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI$1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI$1;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 77
    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI$2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI$2;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mTranslateUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 88
    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI$3;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI$3;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mBarClickListener:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$BarClickListener;

    .line 96
    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI$4;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI$4;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mSeekBarChangeListener:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$SeekBarChangeListener;

    .line 105
    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI$5;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI$5;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mContrastListener:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$ContrastListener;

    .line 121
    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI$6;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI$6;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mSeekBarStatusListener:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$SeekBarStatusListener;

    .line 337
    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    .line 208
    sget v1, Lcom/transsion/camera/feature/makeup/R$dimen;->bottom_ui_translate_anim_distance:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mTranslateDistance:F

    .line 209
    sget v2, Lcom/transsion/camera/feature/makeup/R$dimen;->sink_shutter_translate_distance:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mSinkTranslateDistance:I

    .line 210
    sget v2, Lcom/transsion/camera/feature/makeup/R$dimen;->mu_rv_height:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mBottomUIDefaultHeight:I

    .line 211
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const/high16 v2, 0x3e800000    # 0.25f

    const v3, 0x3dcccccd    # 0.1f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {p1, v2, v3, v2, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const/4 v2, 0x2

    new-array v3, v2, [F

    .line 212
    fill-array-data v3, :array_0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0xc8

    .line 213
    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 214
    invoke-virtual {v3, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v3, v2, v0

    const/4 v0, 0x1

    aput v1, v2, v0

    .line 215
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    .line 216
    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 217
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;)Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpBottomUI;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->makeUpBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpBottomUI;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;FF)Z
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->isFloatEqual(FF)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->computeFilterRootVisibility()V

    return-void
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;I)Z
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->settingUIAnimShowOrHide(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;Z)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->notifyConflictUI(Z)V

    return-void
.end method

.method private addAnimatorListener()V
    .locals 2

    .line 154
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 155
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mTranslateUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method private cancelAnimation()V
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 225
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    return-void
.end method

.method private computeFilterRootVisibility()V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->makeUpBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpBottomUI;

    if-eqz v0, :cond_1

    .line 139
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mAnimShow:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    .line 140
    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private hideEntryRootView()V
    .locals 2

    .line 385
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mEntryView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 386
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 388
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mNeedShow:Z

    .line 389
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mEntryView:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private hideSettingUI()V
    .locals 2

    .line 230
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->makeUpBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpBottomUI;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 233
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->cancelAnimation()V

    .line 234
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->makeUpBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpBottomUI;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 235
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 236
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->makeUpBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpBottomUI;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 237
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->makeUpBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpBottomUI;

    iget v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mTranslateDistance:F

    neg-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 239
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->makeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;

    if-eqz v0, :cond_2

    .line 240
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->resetToInitState()V

    .line 242
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    .line 243
    invoke-interface {v0, v1, v1, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;->sinkUI(ZIZ)V

    .line 244
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->transitionShutterToRegular()V

    :cond_3
    return-void
.end method

.method private isFloatEqual(FF)Z
    .locals 0

    sub-float/2addr p1, p2

    .line 146
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

.method private synthetic lambda$new$0(Z)V
    .locals 1

    .line 338
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mLowLight:Z

    if-eq v0, p1, :cond_0

    .line 339
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mLowLight:Z

    .line 340
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->ringScreenLightUpdateUI()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$ringScreenLightUpdateUI$1()V
    .locals 2

    .line 347
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->makeUpBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpBottomUI;

    if-eqz v0, :cond_0

    .line 348
    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mLowLight:Z

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpBottomUI;->updateLowLight(Z)V

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->makeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;

    if-eqz v0, :cond_1

    .line 351
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mLowLight:Z

    invoke-virtual {v0, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->updateLowLight(Z)V

    :cond_1
    return-void
.end method

.method private notifyConflictUI(Z)V
    .locals 1

    const-string v0, "key_conflict_ui_state"

    if-eqz p1, :cond_0

    .line 130
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string p1, "value_facebeauty_ui_on"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 133
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string p1, "value_facebeauty_ui_off"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private removeAnimatorListener()V
    .locals 2

    .line 159
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 160
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mTranslateUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method private ringScreenLightUpdateUI()V
    .locals 2

    .line 345
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mEntryView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 346
    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private settingUIAnimShowOrHide(I)Z
    .locals 7

    .line 188
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->makeUpBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpBottomUI;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->makeUpBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpBottomUI;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpBottomUI;->updateFeatureRv(I)V

    .line 193
    iget v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mCurrentUIType:I

    const/4 v2, 0x1

    if-ne v0, p1, :cond_1

    :goto_0
    move v1, v2

    goto :goto_1

    .line 196
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->makeUpBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpBottomUI;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v0

    float-to-double v3, v0

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v3, v5

    if-eqz v0, :cond_2

    goto :goto_0

    .line 201
    :cond_2
    :goto_1
    iput p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mCurrentUIType:I

    .line 203
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->showOrHide(Z)V

    return v2

    :cond_3
    :goto_2
    return v1
.end method

.method private showEntryRootView()V
    .locals 2

    .line 396
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mEntryView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 397
    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mNeedShow:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 398
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mNeedShow:Z

    .line 399
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private showEntryRootViewAndInitState()V
    .locals 2

    .line 405
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->makeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mNeedShow:Z

    if-eqz v1, :cond_0

    .line 406
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->resetToInitState()V

    .line 407
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->makeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 408
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->makeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 410
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->showEntryRootView()V

    return-void
.end method

.method private showOrHide(Z)V
    .locals 7

    if-eqz p1, :cond_4

    .line 165
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->makeUpBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpBottomUI;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result p1

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gtz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 166
    :goto_0
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mAnimShow:Z

    if-eqz v1, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_1
    move v1, v0

    .line 168
    :goto_1
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    const/4 v5, 0x2

    new-array v6, v5, [F

    aput p1, v6, v3

    aput v1, v6, v2

    invoke-virtual {v4, v6}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 169
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 170
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->makeUpBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpBottomUI;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result p1

    cmpg-float v1, p1, v0

    if-gez v1, :cond_2

    goto :goto_2

    .line 171
    :cond_2
    iget v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mTranslateDistance:F

    neg-float v0, v0

    .line 172
    :goto_2
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    new-array v4, v5, [F

    aput p1, v4, v3

    aput v0, v4, v2

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 173
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 174
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p1, :cond_4

    .line 175
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mAnimShow:Z

    if-eqz v0, :cond_3

    .line 176
    iget v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mSinkTranslateDistance:I

    invoke-interface {p1, v2, v0, v2}, Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;->sinkUI(ZIZ)V

    .line 177
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->transitionShutterToSmall()V

    goto :goto_3

    .line 179
    :cond_3
    invoke-interface {p1, v3, v3, v2}, Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;->sinkUI(ZIZ)V

    .line 180
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->transitionShutterToRegular()V

    .line 181
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->makeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;

    invoke-virtual {p0, v3, v3}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->notifyState(IZ)V

    :cond_4
    :goto_3
    return-void
.end method

.method private updateMakeUpTopUI()V
    .locals 5

    .line 322
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mSettingDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 323
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 324
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;

    .line 325
    iget-object v2, v1, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->iSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ISetting;->isModeSupport()Z

    move-result v2

    .line 326
    iget-object v3, v1, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->key:Ljava/lang/String;

    const-string v4, "key_mu_slimbody"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 327
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->makeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->setSlimBodyBarState(Z)V

    goto :goto_1

    .line 328
    :cond_1
    iget-object v1, v1, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->key:Ljava/lang/String;

    const-string v3, "key_makeup_feature"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 329
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->makeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->setMakeUpBarState(Z)V

    :cond_2
    :goto_1
    if-nez v2, :cond_0

    .line 332
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/interactive/CommonInteractive;)Landroid/view/View;
    .locals 3

    .line 250
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "init createEntryView"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 251
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mEntryRootView:Landroid/view/ViewGroup;

    .line 252
    sget v0, Lcom/transsion/camera/feature/makeup/R$layout;->makeup_main_layout:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mEntryView:Landroid/view/View;

    .line 253
    sget p2, Lcom/transsion/camera/feature/makeup/R$id;->facebeauty_root:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mFaceBeautyRoot:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;

    .line 254
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mEntryView:Landroid/view/View;

    sget p2, Lcom/transsion/camera/feature/makeup/R$id;->slimbody_root:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mSlimBodyRoot:Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;

    .line 255
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mEntryView:Landroid/view/View;

    sget p2, Lcom/transsion/camera/feature/makeup/R$id;->makeup_root:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mMakeUpRoot:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;

    .line 256
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mEntryView:Landroid/view/View;

    sget p2, Lcom/transsion/camera/feature/makeup/R$id;->top_ui:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->makeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;

    .line 257
    invoke-virtual {p3}, Lcom/transsion/camera/app/common/interactive/CommonInteractive;->getIAppUI()Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 258
    invoke-virtual {p3}, Lcom/transsion/camera/app/common/interactive/CommonInteractive;->getAppUIRect()Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    .line 259
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->makeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 260
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {p2}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result p2

    .line 261
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 262
    iget-object p3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->makeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;

    invoke-virtual {p3, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 263
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->makeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;

    iget-object p3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mBarClickListener:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$BarClickListener;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mSeekBarChangeListener:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$SeekBarChangeListener;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mContrastListener:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$ContrastListener;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mSeekBarStatusListener:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$SeekBarStatusListener;

    invoke-virtual {p1, p3, v0, v1, v2}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->setListener(Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$BarClickListener;Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$SeekBarChangeListener;Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$ContrastListener;Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$SeekBarStatusListener;)V

    .line 264
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mEntryView:Landroid/view/View;

    sget p3, Lcom/transsion/camera/feature/makeup/R$id;->bottom_ui:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpBottomUI;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->makeUpBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpBottomUI;

    .line 265
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 266
    iget p3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mBottomUIDefaultHeight:I

    sub-int/2addr p2, p3

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 267
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->makeUpBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpBottomUI;

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 269
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->makeUpBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpBottomUI;

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->makeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;

    invoke-virtual {p1, p2, p3}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpBottomUI;->setUIInterface(Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;)V

    .line 270
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->addAnimatorListener()V

    .line 271
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/ModuleTransferManager;->registerTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    .line 272
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getRingScreenLightState()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mLowLight:Z

    .line 273
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->ringScreenLightUpdateUI()V

    .line 274
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mEntryView:Landroid/view/View;

    return-object p0
.end method

.method protected doCreateEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getEntryRootView()Landroid/view/ViewGroup;
    .locals 0

    .line 361
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mEntryRootView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public getEntryView()Landroid/view/View;
    .locals 0

    .line 366
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mEntryView:Landroid/view/View;

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

    const-string p0, "key_mu_slimbody"

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

    .line 428
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "key_mu_slimbody"

    .line 429
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "key_mu_face_beauty"

    .line 430
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "key_makeup_feature"

    .line 431
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "key_gender_attribute_value"

    .line 432
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public hideEntryView()V
    .locals 0

    .line 288
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->hideEntryView()V

    .line 289
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->hideEntryRootView()V

    .line 290
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->hideSettingUI()V

    return-void
.end method

.method public notifyCameraOperateAction(I)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    const/16 v2, 0x9

    if-eq p1, v2, :cond_4

    const/16 v2, 0x10

    if-eq p1, v2, :cond_2

    const/16 v2, 0x23

    if-eq p1, v2, :cond_1

    const/16 v2, 0x24

    if-eq p1, v2, :cond_0

    const/16 v2, 0x36

    if-eq p1, v2, :cond_5

    const/16 v2, 0x37

    if-eq p1, v2, :cond_4

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto :goto_2

    .line 478
    :pswitch_0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->showEntryRootView()V

    goto :goto_2

    .line 503
    :pswitch_1
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mSelfTimerCapturing:Z

    goto :goto_1

    .line 489
    :pswitch_2
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mSelfTimerCapturing:Z

    if-nez p1, :cond_9

    .line 490
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->showEntryRootViewAndInitState()V

    goto :goto_2

    .line 485
    :pswitch_3
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->hideSettingUI()V

    .line 486
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->hideEntryRootView()V

    goto :goto_2

    .line 521
    :pswitch_4
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mSelfTimerCapturing:Z

    .line 522
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->setEnable(Z)V

    .line 523
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->showEntryRootView()V

    .line 524
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->makeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;

    if-eqz p1, :cond_9

    .line 525
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 526
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->makeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    goto :goto_2

    .line 497
    :pswitch_5
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mSelfTimerCapturing:Z

    .line 498
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->setEnable(Z)V

    goto :goto_0

    .line 530
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->showEntryRootView()V

    goto :goto_2

    .line 475
    :cond_1
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->hideEntryRootView()V

    goto :goto_2

    .line 494
    :cond_2
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->showEntryRootView()V

    goto :goto_2

    .line 500
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->hideEntryRootView()V

    goto :goto_2

    .line 538
    :cond_4
    :pswitch_6
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->setEnable(Z)V

    goto :goto_2

    .line 509
    :cond_5
    :goto_1
    :pswitch_7
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mFaceBeautyRoot:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;

    if-eqz p1, :cond_6

    .line 510
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->hideDialog()V

    .line 512
    :cond_6
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mSlimBodyRoot:Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;

    if-eqz p1, :cond_7

    .line 513
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->hideDialog()V

    .line 515
    :cond_7
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mMakeUpRoot:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;

    if-eqz p1, :cond_8

    .line 516
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->hideDialog()V

    .line 518
    :cond_8
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->setEnable(Z)V

    :cond_9
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_5
        :pswitch_4
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x19
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()Z
    .locals 2

    .line 455
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mSelfTimerCapturing:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 458
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mEntryView:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 461
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->makeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 464
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->makeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 466
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->hideSettingUI()V

    :cond_3
    return v0
.end method

.method public releaseResource()V
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->makeUpBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpBottomUI;

    if-eqz v0, :cond_0

    .line 309
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpBottomUI;->releaseResource()V

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mSlimBodyRoot:Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;

    if-eqz v0, :cond_1

    .line 313
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->releaseResource()V

    .line 316
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mFaceBeautyRoot:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;

    if-eqz p0, :cond_2

    .line 317
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->releaseResource()V

    :cond_2
    return-void
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 0

    .line 438
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mNeedToMonitorSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    return-void
.end method

.method public setDeviceSettingData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;",
            ">;)V"
        }
    .end annotation

    .line 443
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->setDeviceSettingData(Ljava/util/List;)V

    .line 444
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mSettingDataList:Ljava/util/List;

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

    .line 449
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-void
.end method

.method public setupEntryView()V
    .locals 3

    .line 279
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->setupEntryView()V

    .line 280
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->updateMakeUpTopUI()V

    .line 281
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->makeUpBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpBottomUI;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mSettingDataList:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpBottomUI;->registerSettingData(Lcom/transsion/camera/app/common/setting/StatusMonitor;Ljava/util/List;)V

    .line 282
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->showEntryRootView()V

    .line 283
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->hideSettingUI()V

    return-void
.end method

.method public unInit()V
    .locals 2

    .line 295
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->unInit()V

    .line 296
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "unInit createEntryView"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 298
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->makeUpBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpBottomUI;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpBottomUI;->unregisterSettingData()V

    .line 299
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ModuleTransferManager;->unregisterTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    .line 300
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->removeAnimatorListener()V

    const/4 v0, 0x0

    .line 301
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->makeUpBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpBottomUI;

    .line 302
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->makeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;

    .line 303
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mEntryView:Landroid/view/View;

    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method
