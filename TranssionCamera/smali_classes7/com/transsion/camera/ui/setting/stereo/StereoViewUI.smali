.class public Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;
.super Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;
.source "StereoViewUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/stereo/StereoViewUI$StereoWarningCallbackImpl;,
        Lcom/transsion/camera/ui/setting/stereo/StereoViewUI$UIHandler;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION_240:I = 0xf0

.field private static final MSG_SHOW_GUIDE:I = 0x64

.field private static final PATH_INTERPOLATOR_X:F = 0.25f

.field private static final PATH_INTERPOLATOR_Y1:F = 0.1f

.field private static final PATH_INTERPOLATOR_Y2:F = 1.0f

.field private static final SETTING_KEY:Ljava/lang/String; = "key_stereo"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final ZERO_OFFSET:I


# instance fields
.field private mCurrentEntryValue:Ljava/lang/String;

.field private mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private mIndicatorInAnimator:Landroid/animation/ObjectAnimator;

.field private mIndicatorLayout:Landroid/widget/FrameLayout;

.field private mIndicatorOutAnimator:Landroid/animation/ObjectAnimator;

.field private mIndicatorShift:I

.field private mOnProgressChangeListener:Lcom/transsion/camera/app/ui/widget/GraduationView$OnProgressChangeListener;

.field private mPathInterpolator:Landroid/view/animation/PathInterpolator;

.field private mResources:Landroid/content/res/Resources;

.field private mSdofValueIndicator:Landroid/widget/TextView;

.field private mSdofWheelView:Lcom/transsion/camera/app/ui/widget/GraduationView;

.field private mSelfTimerBegin:Z

.field private mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

.field private mSupportedEntries:[Ljava/lang/String;

.field private mSupportedEntryValues:[Ljava/lang/String;

.field private final mUIHandler:Lcom/transsion/camera/ui/setting/stereo/StereoViewUI$UIHandler;

.field private mWarningType:I

.field private mWheelShift:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "StereoViewUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 4

    .line 93
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;-><init>()V

    .line 59
    new-instance v0, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 66
    iput v1, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->mWarningType:I

    .line 67
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->mSelfTimerBegin:Z

    .line 335
    new-instance v0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI$3;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI$3;-><init>(Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->mOnProgressChangeListener:Lcom/transsion/camera/app/ui/widget/GraduationView$OnProgressChangeListener;

    .line 94
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->mResources:Landroid/content/res/Resources;

    .line 95
    new-instance v0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI$UIHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI$UIHandler;-><init>(Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;Lcom/transsion/camera/ui/setting/stereo/StereoViewUI$1;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->mUIHandler:Lcom/transsion/camera/ui/setting/stereo/StereoViewUI$UIHandler;

    .line 96
    new-instance v0, Lcom/transsion/camera/ui/setting/stereo/StereoSettingUISpec;

    invoke-direct {v0, p1}, Lcom/transsion/camera/ui/setting/stereo/StereoSettingUISpec;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    .line 97
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3e800000    # 0.25f

    const v2, 0x3dcccccd    # 0.1f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    const v0, 0x7f070698

    .line 99
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->mIndicatorShift:I

    const v0, 0x7f070696

    .line 100
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->mWheelShift:I

    return-void
.end method

.method static synthetic access$000()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 34
    sget-object v0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->showGuideView(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->onValueChanged(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;)I
    .locals 0

    .line 34
    iget p0, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->mWarningType:I

    return p0
.end method

.method static synthetic access$1102(Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;I)I
    .locals 0

    .line 34
    iput p1, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->mWarningType:I

    return p1
.end method

.method static synthetic access$1200(Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;)Lcom/transsion/camera/ui/setting/stereo/StereoViewUI$UIHandler;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->mUIHandler:Lcom/transsion/camera/ui/setting/stereo/StereoViewUI$UIHandler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->mIndicatorInAnimator:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->mIndicatorOutAnimator:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;)Lcom/transsion/camera/app/ui/widget/GraduationView;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->mSdofWheelView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->showScrollBar()V

    return-void
.end method

.method static synthetic access$700(Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->hideScrollBar()V

    return-void
.end method

.method static synthetic access$900(Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;)[Ljava/lang/String;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->mSupportedEntries:[Ljava/lang/String;

    return-object p0
.end method

.method private fadeIn(Landroid/view/View;Landroid/view/View;)V
    .locals 7

    const/4 v0, 0x0

    .line 299
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 v1, 0x2

    new-array v2, v1, [F

    .line 301
    iget v3, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->mWheelShift:I

    int-to-float v3, v3

    aput v3, v2, v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput v4, v2, v3

    const-string v5, "translationY"

    invoke-static {v5, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    new-array v6, v1, [F

    aput v4, v6, v0

    .line 302
    iget v4, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->mIndicatorShift:I

    neg-int v4, v4

    int-to-float v4, v4

    aput v4, v6, v3

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    new-array v5, v1, [F

    .line 303
    fill-array-data v5, :array_0

    const-string v6, "alpha"

    invoke-static {v6, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v1, v0

    aput-object v5, v1, v3

    .line 305
    invoke-static {p1, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v1, 0xf0

    .line 306
    invoke-virtual {p1, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v5

    iget-object v6, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v5, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 307
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    new-array p1, v3, [Landroid/animation/PropertyValuesHolder;

    aput-object v4, p1, v0

    .line 309
    invoke-static {p2, p1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->mIndicatorInAnimator:Landroid/animation/ObjectAnimator;

    .line 310
    invoke-virtual {p1, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 311
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->mIndicatorInAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private fadeOut(Landroid/view/View;Landroid/view/View;)V
    .locals 8

    const/4 v0, 0x2

    new-array v1, v0, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    .line 316
    iget v4, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->mWheelShift:I

    int-to-float v4, v4

    const/4 v5, 0x1

    aput v4, v1, v5

    const-string v4, "translationY"

    invoke-static {v4, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    new-array v6, v0, [F

    .line 317
    iget v7, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->mIndicatorShift:I

    neg-int v7, v7

    int-to-float v7, v7

    aput v7, v6, v2

    aput v3, v6, v5

    invoke-static {v4, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    new-array v4, v0, [F

    .line 318
    fill-array-data v4, :array_0

    const-string v6, "alpha"

    invoke-static {v6, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v0, v2

    aput-object v4, v0, v5

    .line 320
    invoke-static {p1, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v6, 0xf0

    .line 321
    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iget-object v4, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 322
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 323
    new-instance v1, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI$2;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI$2;-><init>(Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-array p1, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object v3, p1, v2

    .line 330
    invoke-static {p2, p1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->mIndicatorOutAnimator:Landroid/animation/ObjectAnimator;

    .line 331
    invoke-virtual {p1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 332
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->mIndicatorOutAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private hideScrollBar()V
    .locals 2

    .line 295
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->mSdofWheelView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->mIndicatorLayout:Landroid/widget/FrameLayout;

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->fadeOut(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method private isBWCamera()Z
    .locals 1

    .line 417
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getBlackWhitePortraitCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private onValueChanged(I)V
    .locals 2

    .line 349
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->mSupportedEntries:[Ljava/lang/String;

    aget-object v0, v0, p1

    .line 350
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->mSupportedEntryValues:[Ljava/lang/String;

    aget-object p1, v1, p1

    .line 351
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->mSdofValueIndicator:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 352
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->mCurrentEntryValue:Ljava/lang/String;

    .line 353
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p0, :cond_0

    .line 354
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private showGuideView(I)V
    .locals 4

    .line 104
    sget-object v0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showGuideView,type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string v1, "key_tele_camera"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 107
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string v3, "key_dual_cam_bw"

    invoke-interface {v2, v3}, Lcom/transsion/camera/app/common/setting/ISetting;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz p1, :cond_5

    const/4 v3, 0x1

    if-eq p1, v3, :cond_2

    const/4 v3, 0x2

    if-eq p1, v3, :cond_1

    const/4 v3, 0x4

    if-eq p1, v3, :cond_0

    goto :goto_2

    :cond_0
    const v2, 0x7f100102

    goto :goto_2

    :cond_1
    const v2, 0x7f100101

    goto :goto_2

    .line 120
    :cond_2
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->isBWCamera()Z

    move-result p1

    if-nez p1, :cond_4

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    const p1, 0x7f100100

    goto :goto_1

    :cond_4
    :goto_0
    const p1, 0x7f1000a2

    :goto_1
    move v2, p1

    :cond_5
    :goto_2
    if-eqz v2, :cond_6

    .line 126
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    if-eqz p1, :cond_9

    .line 127
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 128
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz p1, :cond_9

    .line 129
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    goto :goto_4

    .line 132
    :cond_6
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->isBWCamera()Z

    move-result p1

    if-nez p1, :cond_8

    if-nez v0, :cond_8

    if-eqz v1, :cond_7

    goto :goto_3

    .line 137
    :cond_7
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f1000ff

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 138
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz p1, :cond_9

    .line 139
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    goto :goto_4

    .line 133
    :cond_8
    :goto_3
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz p1, :cond_9

    .line 134
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_9
    :goto_4
    return-void
.end method

.method private showScrollBar()V
    .locals 2

    .line 286
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->mSdofWheelView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->mIndicatorLayout:Landroid/widget/FrameLayout;

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->fadeIn(Landroid/view/View;Landroid/view/View;)V

    .line 288
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 290
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->mSdofWheelView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/widget/GraduationView;->setProgress(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected doCreateEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const v0, 0x7f0c018e

    const/4 v1, 0x0

    .line 146
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 148
    iget-object p2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getTopRegionHeight()I

    move-result p2

    if-eqz p2, :cond_0

    .line 149
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 150
    iget v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getTopRegionHeight()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p2, v1, v0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 151
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    const p2, 0x7f09025f

    .line 153
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->mIndicatorLayout:Landroid/widget/FrameLayout;

    const p2, 0x7f09025e

    .line 154
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->mSdofValueIndicator:Landroid/widget/TextView;

    const p2, 0x7f0903dd

    .line 156
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/app/ui/widget/GraduationView;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->mSdofWheelView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    .line 158
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->mIndicatorLayout:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI$1;-><init>(Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;)V

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->mSdofWheelView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->mOnProgressChangeListener:Lcom/transsion/camera/app/ui/widget/GraduationView$OnProgressChangeListener;

    invoke-virtual {p2, p0}, Lcom/transsion/camera/app/ui/widget/GraduationView;->setOnProgressChangeListener(Lcom/transsion/camera/app/ui/widget/GraduationView$OnProgressChangeListener;)V

    return-object p1
.end method

.method public bridge synthetic getExtraKey()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getExtraKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    const-string p0, "key_stereo"

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public hideEntryView()V
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 197
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->mSdofWheelView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 201
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->hideScrollBar()V

    .line 204
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_2

    .line 205
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_2
    return-void
.end method

.method public notifyCameraOperateAction(I)V
    .locals 4

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eq p1, v0, :cond_5

    const/16 v2, 0x1b

    if-eq p1, v2, :cond_4

    const/16 v2, 0x4c

    if-eq p1, v2, :cond_3

    const/16 v2, 0xb

    const/4 v3, 0x4

    if-eq p1, v2, :cond_2

    const/16 v2, 0xc

    if-eq p1, v2, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 398
    :pswitch_0
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->mIndicatorLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 399
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->mSdofWheelView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_6

    .line 400
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->mSdofWheelView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 401
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->hideScrollBar()V

    goto :goto_0

    .line 380
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->isBWCamera()Z

    move-result p1

    if-nez p1, :cond_1

    .line 381
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->mIndicatorLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 383
    :cond_1
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->mSelfTimerBegin:Z

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    .line 372
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->mSelfTimerBegin:Z

    .line 373
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->mIndicatorLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 374
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->mSdofWheelView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_6

    .line 375
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->mSdofWheelView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 376
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->hideScrollBar()V

    goto :goto_0

    .line 407
    :cond_3
    :pswitch_1
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->mSelfTimerBegin:Z

    if-nez p1, :cond_6

    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->isBWCamera()Z

    move-result p1

    if-nez p1, :cond_6

    .line 408
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->mIndicatorLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 392
    :cond_4
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->mSelfTimerBegin:Z

    .line 393
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->mSdofWheelView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_6

    .line 394
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->hideScrollBar()V

    goto :goto_0

    .line 387
    :cond_5
    iput v1, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->mWarningType:I

    .line 388
    invoke-direct {p0, v1}, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->showGuideView(I)V

    :cond_6
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x48
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 2

    .line 243
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p1, :cond_0

    .line 245
    sget-object p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mDeviceSetting is null!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 249
    :cond_0
    new-instance p1, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI$StereoWarningCallbackImpl;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI$StereoWarningCallbackImpl;-><init>(Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;Lcom/transsion/camera/ui/setting/stereo/StereoViewUI$1;)V

    .line 250
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    .line 252
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->mCurrentEntryValue:Ljava/lang/String;

    .line 255
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSupport()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_1

    .line 257
    sget-object p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mDeviceSetting\'s support is null!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 261
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->createSupportedEntries(Ljava/util/List;)V

    .line 262
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryValues()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->mSupportedEntryValues:[Ljava/lang/String;

    .line 263
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntries()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->mSupportedEntries:[Ljava/lang/String;

    .line 265
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->mSupportedEntryValues:[Ljava/lang/String;

    array-length p1, p1

    if-nez p1, :cond_2

    .line 266
    sget-object p1, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "support value is null! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getTitle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 271
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getIndex(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_3

    .line 273
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->mSupportedEntryValues:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->mCurrentEntryValue:Ljava/lang/String;

    .line 274
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p0, :cond_3

    .line 275
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

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

    return-void
.end method

.method public setupEntryView()V
    .locals 3

    .line 184
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 186
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->mSdofValueIndicator:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->mSupportedEntries:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->mSdofWheelView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/ui/widget/GraduationView;->setProgress(I)V

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->mIndicatorLayout:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->isBWCamera()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string v1, "key_dual_cam_bw"

    .line 190
    invoke-interface {p0, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "on"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/16 p0, 0x8

    .line 189
    :goto_1
    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public unInit()V
    .locals 2

    .line 211
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 212
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_1

    .line 216
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 218
    :cond_1
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->unInit()V

    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method
