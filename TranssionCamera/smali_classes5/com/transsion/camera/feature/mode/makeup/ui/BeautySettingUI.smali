.class public Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;
.super Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;
.source "BeautySettingUI.java"


# static fields
.field private static final DURATION:I = 0x12c

.field private static final PRECISION:F = 0.01f

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mAlphaAnimator:Landroid/animation/ValueAnimator;

.field private final mAlphaInterpolator:Landroid/view/animation/PathInterpolator;

.field private final mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mAnimShow:Z

.field private final mBarClickListener:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$BarClickListener;

.field private mBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;

.field private final mBottomUIDefaultHeight:I

.field private final mContrastListener:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$ContrastListener;

.field private mCurrentUIType:I

.field private mEntryRootView:Landroid/view/ViewGroup;

.field private mEntryView:Landroid/view/View;

.field private mFaceBeautyExRoot:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;

.field private final mFadeOutInterpolator:Landroid/view/animation/PathInterpolator;

.field private mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private mLowLight:Z

.field private final mModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

.field private mNeedShow:Z

.field private mNeedToMonitorSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private final mPathInterpolator:Landroid/view/animation/PathInterpolator;

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

.field private makeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;


# direct methods
.method public static synthetic $r8$lambda$EZx3GKxfpNu4sEr9y-dvyGOidZY(Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->lambda$ringScreenLightUpdateUI$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$g7JJfPXnpKHLs6xXA9OJra25c4s(Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->lambda$new$0(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 37
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 6

    .line 227
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mSelfTimerCapturing:Z

    .line 68
    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI$1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI$1;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 81
    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI$2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI$2;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mTranslateUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 92
    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI$3;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI$3;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mBarClickListener:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$BarClickListener;

    .line 103
    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI$4;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI$4;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mSeekBarChangeListener:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$SeekBarChangeListener;

    .line 112
    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI$5;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI$5;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mContrastListener:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$ContrastListener;

    .line 128
    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI$6;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI$6;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mSeekBarStatusListener:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$SeekBarStatusListener;

    .line 341
    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    .line 228
    sget v1, Lcom/transsion/camera/feature/makeup/R$dimen;->bottom_ui_translate_anim_distance:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mTranslateDistance:F

    .line 229
    sget v2, Lcom/transsion/camera/feature/makeup/R$dimen;->sink_shutter_translate_distance:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mSinkTranslateDistance:I

    .line 230
    sget v2, Lcom/transsion/camera/feature/makeup/R$dimen;->mu_rv_height:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mBottomUIDefaultHeight:I

    .line 231
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const/high16 v2, 0x3e800000    # 0.25f

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {p1, v2, v3, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 232
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3ea8f5c3    # 0.33f

    const v5, 0x3f28f5c3    # 0.66f

    invoke-direct {p1, v2, v3, v5, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    .line 233
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3ecccccd    # 0.4f

    const v5, 0x3dcccccd    # 0.1f

    invoke-direct {p1, v2, v3, v5, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mFadeOutInterpolator:Landroid/view/animation/PathInterpolator;

    const/4 p1, 0x2

    new-array v2, p1, [F

    .line 234
    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x12c

    .line 235
    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-array p1, p1, [F

    aput v3, p1, v0

    const/4 v0, 0x1

    aput v1, p1, v0

    .line 236
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    .line 237
    invoke-virtual {p1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;)Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;FF)Z
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->isFloatEqual(FF)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->computeFilterRootVisibility()V

    return-void
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;I)Z
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->settingUIAnimShowOrHide(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;Z)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->notifyConflictUI(Z)V

    return-void
.end method

.method private addAnimatorListener()V
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 163
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mTranslateUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method private cancelAnimation()V
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 245
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    return-void
.end method

.method private computeFilterRootVisibility()V
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;

    if-eqz v0, :cond_1

    .line 146
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mAnimShow:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    .line 147
    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private hideEntryRootView()V
    .locals 2

    .line 389
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mEntryView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 390
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

    .line 392
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mNeedShow:Z

    .line 393
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mEntryView:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private hideSettingUI()V
    .locals 2

    .line 250
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 253
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->cancelAnimation()V

    .line 254
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 255
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 256
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 257
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;

    iget v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mTranslateDistance:F

    neg-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setTranslationY(F)V

    .line 259
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->makeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;

    if-eqz v0, :cond_2

    .line 260
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->resetToInitState()V

    .line 262
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    .line 263
    invoke-interface {v0, v1, v1, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;->sinkUI(ZIZ)V

    .line 264
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->transitionShutterToRegular()V

    :cond_3
    return-void
.end method

.method private isFloatEqual(FF)Z
    .locals 0

    sub-float/2addr p1, p2

    .line 153
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

    .line 342
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mLowLight:Z

    if-eq v0, p1, :cond_0

    .line 343
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mLowLight:Z

    .line 344
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->ringScreenLightUpdateUI()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$ringScreenLightUpdateUI$1()V
    .locals 2

    .line 351
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;

    if-eqz v0, :cond_0

    .line 352
    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mLowLight:Z

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;->updateLowLight(Z)V

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->makeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;

    if-eqz v0, :cond_1

    .line 355
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mLowLight:Z

    invoke-virtual {v0, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->updateLowLight(Z)V

    :cond_1
    return-void
.end method

.method private notifyConflictUI(Z)V
    .locals 1

    const-string v0, "key_conflict_ui_state"

    if-eqz p1, :cond_0

    .line 137
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string p1, "value_facebeauty_ui_on"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 140
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string p1, "value_facebeauty_ui_off"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private removeAnimatorListener()V
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 168
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mTranslateUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method private ringScreenLightUpdateUI()V
    .locals 2

    .line 349
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mEntryView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 350
    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private settingUIAnimShowOrHide(I)Z
    .locals 7

    .line 208
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;->updateFeatureRv(I)V

    .line 213
    iget v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mCurrentUIType:I

    const/4 v2, 0x1

    if-ne v0, p1, :cond_1

    :goto_0
    move v1, v2

    goto :goto_1

    .line 216
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getAlpha()F

    move-result v0

    float-to-double v3, v0

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v3, v5

    if-eqz v0, :cond_2

    goto :goto_0

    .line 221
    :cond_2
    :goto_1
    iput p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mCurrentUIType:I

    .line 223
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->showOrHide(Z)V

    return v2

    :cond_3
    :goto_2
    return v1
.end method

.method private showEntryRootView()V
    .locals 2

    .line 400
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mEntryView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 401
    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mNeedShow:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 402
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mNeedShow:Z

    .line 403
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private showEntryRootViewAndInitState()V
    .locals 2

    .line 409
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->makeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mNeedShow:Z

    if-eqz v1, :cond_0

    .line 410
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->resetToInitState()V

    .line 411
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->makeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 412
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->makeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 414
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->showEntryRootView()V

    return-void
.end method

.method private showOrHide(Z)V
    .locals 7

    .line 172
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->cancelAnimation()V

    if-eqz p1, :cond_6

    .line 174
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getAlpha()F

    move-result p1

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gtz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 175
    :goto_0
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mAnimShow:Z

    if-eqz v1, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_1
    move v1, v0

    .line 177
    :goto_1
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    const/4 v5, 0x2

    new-array v6, v5, [F

    aput p1, v6, v2

    aput v1, v6, v3

    invoke-virtual {v4, v6}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 178
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mAnimShow:Z

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mTranslateDistance:F

    neg-float p1, p1

    goto :goto_2

    :cond_2
    move p1, v0

    :goto_2
    cmpg-float v1, p1, v0

    if-gez v1, :cond_3

    goto :goto_3

    .line 179
    :cond_3
    iget v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mTranslateDistance:F

    neg-float v0, v0

    .line 180
    :goto_3
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    new-array v4, v5, [F

    aput p1, v4, v2

    aput v0, v4, v3

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 181
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mAnimShow:Z

    if-eqz p1, :cond_4

    .line 182
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x64

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 183
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 184
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 185
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_4

    .line 187
    :cond_4
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 188
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 189
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mFadeOutInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 190
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mFadeOutInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 192
    :goto_4
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 193
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 194
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p1, :cond_6

    .line 195
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mAnimShow:Z

    if-eqz v0, :cond_5

    .line 196
    iget v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mSinkTranslateDistance:I

    invoke-interface {p1, v3, v0, v3}, Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;->sinkUI(ZIZ)V

    .line 197
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->transitionShutterToSmall()V

    goto :goto_5

    .line 199
    :cond_5
    invoke-interface {p1, v2, v2, v3}, Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;->sinkUI(ZIZ)V

    .line 200
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->transitionShutterToRegular()V

    .line 201
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->makeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;

    invoke-virtual {p0, v2, v3}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->notifyState(IZ)V

    :cond_6
    :goto_5
    return-void
.end method

.method private updateMakeUpTopUI()V
    .locals 5

    .line 326
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mSettingDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 327
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 328
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;

    .line 329
    iget-object v2, v1, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->iSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ISetting;->isModeSupport()Z

    move-result v2

    .line 330
    iget-object v3, v1, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->key:Ljava/lang/String;

    const-string v4, "key_mu_slimbody"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 331
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->makeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->setSlimBodyBarState(Z)V

    goto :goto_1

    .line 332
    :cond_1
    iget-object v1, v1, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->key:Ljava/lang/String;

    const-string v3, "key_makeup_feature"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 333
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->makeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->setMakeUpBarState(Z)V

    :cond_2
    :goto_1
    if-nez v2, :cond_0

    .line 336
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/interactive/CommonInteractive;)Landroid/view/View;
    .locals 3

    .line 270
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "init createEntryView"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 271
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mEntryRootView:Landroid/view/ViewGroup;

    .line 272
    sget v0, Lcom/transsion/camera/feature/makeup/R$layout;->facebeauty_root_layout:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mEntryView:Landroid/view/View;

    .line 273
    sget p2, Lcom/transsion/camera/feature/makeup/R$id;->facebeauty_root:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mFaceBeautyExRoot:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;

    .line 274
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mEntryView:Landroid/view/View;

    sget p2, Lcom/transsion/camera/feature/makeup/R$id;->slimbody_root:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mSlimBodyRoot:Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;

    .line 275
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mEntryView:Landroid/view/View;

    sget p2, Lcom/transsion/camera/feature/makeup/R$id;->top_ui:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->makeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;

    .line 276
    invoke-virtual {p3}, Lcom/transsion/camera/app/common/interactive/CommonInteractive;->getIAppUI()Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 277
    invoke-virtual {p3}, Lcom/transsion/camera/app/common/interactive/CommonInteractive;->getAppUIRect()Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    .line 278
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->makeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 279
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {p2}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result p2

    .line 280
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 281
    iget-object p3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->makeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;

    invoke-virtual {p3, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 282
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->makeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;

    iget-object p3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mBarClickListener:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$BarClickListener;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mSeekBarChangeListener:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$SeekBarChangeListener;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mContrastListener:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$ContrastListener;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mSeekBarStatusListener:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$SeekBarStatusListener;

    invoke-virtual {p1, p3, v0, v1, v2}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->setListener(Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$BarClickListener;Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$SeekBarChangeListener;Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$ContrastListener;Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$SeekBarStatusListener;)V

    .line 283
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mEntryView:Landroid/view/View;

    sget p3, Lcom/transsion/camera/feature/makeup/R$id;->bottom_ui:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;

    .line 284
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 285
    iget p3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mBottomUIDefaultHeight:I

    sub-int/2addr p2, p3

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 286
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;

    invoke-virtual {p2, p1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 288
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->makeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;

    invoke-virtual {p1, p2, p3}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;->setUIInterface(Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;)V

    .line 289
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->addAnimatorListener()V

    .line 290
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/ModuleTransferManager;->registerTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    .line 291
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getRingScreenLightState()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mLowLight:Z

    .line 292
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->ringScreenLightUpdateUI()V

    .line 293
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mEntryView:Landroid/view/View;

    return-object p0
.end method

.method protected doCreateEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getEntryRootView()Landroid/view/ViewGroup;
    .locals 0

    .line 365
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mEntryRootView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public getEntryView()Landroid/view/View;
    .locals 0

    .line 370
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mEntryView:Landroid/view/View;

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

    .line 432
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "key_mu_slimbody"

    .line 433
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "key_mu_face_beauty"

    .line 434
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "key_makeup_feature"

    .line 435
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "key_gender_attribute_value"

    .line 436
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

    .line 307
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->hideEntryView()V

    .line 308
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->hideEntryRootView()V

    .line 309
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->hideSettingUI()V

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

    if-eq p1, v2, :cond_3

    const/16 v2, 0x24

    if-eq p1, v2, :cond_2

    const/16 v2, 0x36

    if-eq p1, v2, :cond_5

    const/16 v2, 0x37

    if-eq p1, v2, :cond_4

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto :goto_0

    .line 511
    :pswitch_0
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mSelfTimerCapturing:Z

    .line 512
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mFaceBeautyExRoot:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;

    if-eqz p1, :cond_0

    .line 513
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->hideDialog()V

    .line 515
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mSlimBodyRoot:Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;

    if-eqz p1, :cond_1

    .line 516
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->hideDialog()V

    .line 518
    :cond_1
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->setEnable(Z)V

    goto :goto_0

    .line 501
    :pswitch_1
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mSelfTimerCapturing:Z

    if-nez p1, :cond_8

    .line 502
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->showEntryRootViewAndInitState()V

    goto :goto_0

    .line 497
    :pswitch_2
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->hideSettingUI()V

    .line 498
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->hideEntryRootView()V

    goto :goto_0

    .line 533
    :pswitch_3
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mSelfTimerCapturing:Z

    .line 534
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->setEnable(Z)V

    .line 535
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->showEntryRootView()V

    .line 536
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->makeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;

    if-eqz p1, :cond_8

    .line 537
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 538
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->makeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    goto :goto_0

    .line 506
    :pswitch_4
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mSelfTimerCapturing:Z

    .line 507
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->setEnable(Z)V

    .line 508
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->hideEntryRootView()V

    goto :goto_0

    .line 490
    :cond_2
    :pswitch_5
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->showEntryRootView()V

    goto :goto_0

    .line 485
    :cond_3
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->hideEntryRootView()V

    goto :goto_0

    .line 547
    :cond_4
    :pswitch_6
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->setEnable(Z)V

    goto :goto_0

    .line 524
    :cond_5
    :pswitch_7
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mFaceBeautyExRoot:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;

    if-eqz p1, :cond_6

    .line 525
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->hideDialog()V

    .line 527
    :cond_6
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mSlimBodyRoot:Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;

    if-eqz p1, :cond_7

    .line 528
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->hideDialog()V

    .line 530
    :cond_7
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->setEnable(Z)V

    :cond_8
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_4
        :pswitch_3
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x19
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public onBackPressed()Z
    .locals 4

    const-wide/16 v0, 0xc8

    .line 458
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/CameraUtil;->isFastDoubleClick(J)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 462
    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mSelfTimerCapturing:Z

    if-eqz v2, :cond_1

    return v0

    .line 465
    :cond_1
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mEntryView:Landroid/view/View;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_2

    return v0

    .line 468
    :cond_2
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->makeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_3

    return v0

    .line 471
    :cond_3
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->makeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getAlpha()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_4

    .line 472
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->makeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->onBackPressed()Z

    move-result v0

    :cond_4
    if-eqz v0, :cond_5

    .line 475
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->showOrHide(Z)V

    :cond_5
    return v0
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 0

    .line 442
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mNeedToMonitorSetting:Lcom/transsion/camera/app/common/setting/ISetting;

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

    .line 447
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->setDeviceSettingData(Ljava/util/List;)V

    .line 448
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mSettingDataList:Ljava/util/List;

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

    .line 453
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-void
.end method

.method public setupEntryView()V
    .locals 3

    .line 298
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->setupEntryView()V

    .line 299
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->updateMakeUpTopUI()V

    .line 300
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mSettingDataList:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;->registerSettingData(Lcom/transsion/camera/app/common/setting/StatusMonitor;Ljava/util/List;)V

    .line 301
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->showEntryRootView()V

    .line 302
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->hideSettingUI()V

    return-void
.end method

.method public unInit()V
    .locals 2

    .line 314
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->unInit()V

    .line 315
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "unInit createEntryView"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 317
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;->unregisterSettingData()V

    .line 318
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ModuleTransferManager;->unregisterTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    .line 319
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->removeAnimatorListener()V

    const/4 v0, 0x0

    .line 320
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;

    .line 321
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->makeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;

    .line 322
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mEntryView:Landroid/view/View;

    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method
