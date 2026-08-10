.class public Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;
.super Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;
.source "VideoSightShockSettingUI.java"


# static fields
.field private static final ANIMATION_DELAY_TIME:I = 0x64

.field private static final DURATION:I = 0x12c

.field private static final EFFECT_ENTRY_CLASS:Ljava/lang/String; = "com.transsion.camera.feature.setting.videoeffect.VideoEffectEntry"

.field private static final FILTER_ENTRY_CLASS:Ljava/lang/String; = "com.transsion.camera.feature.setting.videofilter.VideoFilterEntry"

.field private static final FRAME_ENTRY_CLASS:Ljava/lang/String; = "com.transsion.camera.feature.setting.videoframe.VideoFrameEntry"

.field public static final STATE_TO_SHOW_PANEL_VIEW:I = 0x1

.field public static final STATE_TO_SHOW_SWITCH_BAR:I = 0x0

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final TRANSPARENT_0:F = 0.0f

.field private static final TRANSPARENT_1:F = 1.0f

.field private static final VSS_MODE_DEBUG:Ljava/lang/String; = "debug.camera.vss.mode"


# instance fields
.field private final mAlphaAnimator:Landroid/animation/ValueAnimator;

.field private final mAlphaPathInterpolator:Landroid/view/animation/PathInterpolator;

.field private final mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private final mBottomUIDefaultHeight:I

.field private mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

.field private mCurrentUIState:I

.field private final mDefaultVssControlViewHeight:I

.field private final mDisappearAnimatorEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private mEntryRootView:Landroid/view/ViewGroup;

.field private mEntryView:Landroid/view/View;

.field private final mFadeOutPathInterpolator:Landroid/view/animation/PathInterpolator;

.field private mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private final mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

.field private final mPathInterpolator:Landroid/view/animation/PathInterpolator;

.field private mSelectRoot:Landroid/view/ViewGroup;

.field private final mSinkTranslateDistance:I

.field private final mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private final mTranslateAnimator:Landroid/animation/ValueAnimator;

.field private final mTranslateDistance:F

.field private final mTranslateUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private final mUICallbackImpl:Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

.field private final mVssControlContentPadding:I

.field private final mVssUIManager:Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;

.field private final mbSupportEffect:Z

.field private final mbSupportFilter:Z

.field private final mbSupportFrame:Z


# direct methods
.method public static synthetic $r8$lambda$0w7xT_Jy1hmS6G56UdO3sfKU4sU(Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->updateIndicatorRingScreenLight(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$4iDZMv2KPE9HNzKWX8e8DH1hDD8(Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->onAlphaAnimationUpdate(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6wCajiK1eu8EF3bQ14Ef5eda_xY(Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->lambda$new$1(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CRgP-LC5ki5PQR7TEdsc0D4Zcl8(Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->lambda$new$4(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QO3a5S1-An3xHa1CBEpcCwLSSWo(Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;Ljava/lang/Object;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->lambda$new$2(Ljava/lang/Object;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Xp9ihFvZPZSZicmQxvqqI6fhlWQ(Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->onTranslateAnimationUpdate(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$toldmA5K8IUfg7g9BuiVI1JKqws(Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->lambda$showSettingUI$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$zOqePZLsqjz0LAo4lHLcRMSj_u8(Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->lambda$new$3()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 51
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 6

    .line 114
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;-><init>()V

    .line 65
    new-instance v0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 66
    new-instance v0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mTranslateUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    const/4 v0, 0x0

    .line 78
    iput v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mCurrentUIState:I

    .line 94
    new-instance v1, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI$1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI$1;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;)V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mDisappearAnimatorEndListener:Landroid/animation/AnimatorListenerAdapter;

    .line 173
    new-instance v1, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI$$ExternalSyntheticLambda4;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;)V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    .line 310
    new-instance v1, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI$$ExternalSyntheticLambda5;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;)V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mUICallbackImpl:Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    .line 513
    new-instance v1, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI$$ExternalSyntheticLambda6;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;)V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const v1, 0x7f0707a7

    .line 115
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mTranslateDistance:F

    const v2, 0x7f0707a6

    .line 116
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mSinkTranslateDistance:I

    const v2, 0x7f07078a

    .line 117
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mBottomUIDefaultHeight:I

    const v2, 0x7f07078d

    .line 118
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mDefaultVssControlViewHeight:I

    const v2, 0x7f07078c

    .line 119
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mVssControlContentPadding:I

    .line 121
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const/high16 v2, 0x3e800000    # 0.25f

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {p1, v2, v3, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 122
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3ea8f5c3    # 0.33f

    const v5, 0x3f28f5c3    # 0.66f

    invoke-direct {p1, v2, v3, v5, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mAlphaPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 123
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3ecccccd    # 0.4f

    const v5, 0x3dcccccd    # 0.1f

    invoke-direct {p1, v2, v3, v5, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mFadeOutPathInterpolator:Landroid/view/animation/PathInterpolator;

    const/4 p1, 0x2

    new-array v2, p1, [F

    .line 125
    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x12c

    .line 126
    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-array p1, p1, [F

    aput v3, p1, v0

    const/4 v2, 0x1

    aput v1, p1, v2

    .line 128
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    .line 129
    invoke-virtual {p1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const-string p1, "com.transsion.camera.feature.setting.videofilter.VideoFilterEntry"

    .line 131
    invoke-static {p1}, Lcom/transsion/camera/utils/ReflectionUtils;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mbSupportFilter:Z

    const-string v1, "com.transsion.camera.feature.setting.videoeffect.VideoEffectEntry"

    .line 132
    invoke-static {v1}, Lcom/transsion/camera/utils/ReflectionUtils;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mbSupportEffect:Z

    const-string v3, "com.transsion.camera.feature.setting.videoframe.VideoFrameEntry"

    .line 133
    invoke-static {v3}, Lcom/transsion/camera/utils/ReflectionUtils;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    if-eqz v3, :cond_2

    move v0, v2

    :cond_2
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mbSupportFrame:Z

    .line 134
    new-instance v2, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;

    invoke-direct {v2, p1, v1, v0}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;-><init>(ZZZ)V

    iput-object v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mVssUIManager:Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$000(Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;)Landroid/view/ViewGroup;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mSelectRoot:Landroid/view/ViewGroup;

    return-object p0
.end method

.method private addAnimatorListener()V
    .locals 2

    .line 219
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 220
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mTranslateUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method private cancelAnimation()V
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 234
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    return-void
.end method

.method private hideEntryRootView()V
    .locals 1

    .line 418
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mEntryView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 419
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mEntryView:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private hideSettingUI(ZZ)V
    .locals 6

    .line 239
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mSelectRoot:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    .line 240
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 241
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p2

    if-eqz p2, :cond_0

    goto/16 :goto_1

    .line 245
    :cond_0
    sget-object p2, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hideSettingUI, needAnimation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 247
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->cancelAnimation()V

    const/4 p2, 0x0

    .line 248
    iput p2, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mCurrentUIState:I

    .line 249
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mVssUIManager:Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;

    invoke-virtual {v0, p2}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->updateRecyclerViewScrollState(I)V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 251
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 252
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mFadeOutPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 253
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 254
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 256
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    new-array v2, v2, [F

    aput v0, v2, p2

    const/4 v0, 0x1

    iget v5, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mTranslateDistance:F

    neg-float v5, v5

    aput v5, v2, v0

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 257
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mDisappearAnimatorEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 258
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mDisappearAnimatorEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 259
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mFadeOutPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 260
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 261
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 264
    :cond_1
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mSelectRoot:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 265
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mSelectRoot:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 266
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mSelectRoot:Landroid/view/ViewGroup;

    iget v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mTranslateDistance:F

    neg-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 267
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->hideEntryRootView()V

    .line 270
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_2

    .line 271
    invoke-interface {v0, p2, p2, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;->sinkUI(ZIZ)V

    .line 275
    :cond_2
    invoke-direct {p0, p2}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->notifyFilterPanelState(Z)V

    :cond_3
    :goto_1
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private initView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 6

    .line 152
    iput-object p2, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mEntryRootView:Landroid/view/ViewGroup;

    const v0, 0x7f0c01d8

    const/4 v1, 0x0

    .line 153
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mEntryView:Landroid/view/View;

    .line 154
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 155
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mEntryView:Landroid/view/View;

    const p2, 0x7f0904f7

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mSelectRoot:Landroid/view/ViewGroup;

    .line 156
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mVssUIManager:Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mEntryView:Landroid/view/View;

    iget-object v5, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->initView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;ILcom/transsion/camera/app/common/IAppUI;)V

    return-void
.end method

.method private synthetic lambda$new$1(Ljava/lang/Object;)V
    .locals 0

    .line 315
    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->resetUIState(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$new$2(Ljava/lang/Object;I)V
    .locals 1

    const/16 v0, 0x64

    if-ne p2, v0, :cond_1

    .line 312
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p2, v0, :cond_0

    .line 313
    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->resetUIState(Ljava/lang/String;)V

    goto :goto_0

    .line 314
    :cond_0
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mEntryView:Landroid/view/View;

    if-eqz p2, :cond_1

    .line 315
    new-instance v0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$new$3()V
    .locals 1

    const/4 v0, 0x0

    .line 521
    invoke-direct {p0, v0, v0}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->hideSettingUI(ZZ)V

    return-void
.end method

.method private synthetic lambda$new$4(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const-string p2, "key_video_quality"

    .line 514
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 518
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    if-ne p1, p2, :cond_1

    const/4 p1, 0x0

    .line 519
    invoke-direct {p0, p1, p1}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->hideSettingUI(ZZ)V

    goto :goto_0

    .line 520
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mEntryView:Landroid/view/View;

    if-eqz p1, :cond_2

    .line 521
    new-instance p2, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI$$ExternalSyntheticLambda7;

    invoke-direct {p2, p0}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI$$ExternalSyntheticLambda7;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic lambda$showSettingUI$0()V
    .locals 2

    .line 296
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mSelectRoot:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 297
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 298
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private notifyFilterPanelState(Z)V
    .locals 2

    .line 193
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mEntryView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "key_conflict_ui_state"

    if-eqz p1, :cond_1

    .line 198
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p1

    const-string v1, "value_filter_ui_on"

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 199
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 p1, 0x2f

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    goto :goto_0

    .line 201
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p1

    const-string v1, "value_filter_ui_off"

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 202
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 p1, 0x30

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :goto_0
    return-void
.end method

.method private onAlphaAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mSelectRoot:Landroid/view/ViewGroup;

    if-eqz p0, :cond_0

    .line 208
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method private onTranslateAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 213
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mSelectRoot:Landroid/view/ViewGroup;

    if-eqz p0, :cond_0

    .line 214
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    :cond_0
    return-void
.end method

.method private registerKeyToMonitor()V
    .locals 2

    .line 502
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_0

    .line 503
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v1, "key_video_quality"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_0
    return-void
.end method

.method private removeAnimatorListener()V
    .locals 2

    .line 224
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 225
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mTranslateUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method private resetUIState(Ljava/lang/String;)V
    .locals 2

    .line 321
    sget-object v0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "resetUIState"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 322
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->hideSettingUI(ZZ)V

    .line 324
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mVssUIManager:Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;

    if-eqz p0, :cond_0

    .line 325
    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->resetUIState(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private showEntryRootView()V
    .locals 1

    .line 412
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mEntryView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mEntryView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private showSettingUI()V
    .locals 5

    .line 279
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mSelectRoot:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 280
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 284
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->showEntryRootView()V

    const/4 v0, 0x1

    .line 285
    iput v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mCurrentUIState:I

    .line 286
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mVssUIManager:Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->updateRecyclerViewScrollState(I)V

    .line 288
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 289
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mAlphaPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 291
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    new-array v2, v2, [F

    const/4 v3, 0x0

    iget v4, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mTranslateDistance:F

    neg-float v4, v4

    aput v4, v2, v3

    const/4 v3, 0x0

    aput v3, v2, v0

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 292
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mDisappearAnimatorEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 293
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 295
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mSelectRoot:Landroid/view/ViewGroup;

    new-instance v2, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;)V

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 301
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v1, :cond_1

    .line 302
    iget v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mSinkTranslateDistance:I

    invoke-interface {v1, v0, v2, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;->sinkUI(ZIZ)V

    .line 304
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mVssUIManager:Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;

    iget v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mDefaultVssControlViewHeight:I

    iget v3, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mVssControlContentPadding:I

    invoke-virtual {v1, v2, v3}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->adjustControlView(II)V

    .line 307
    :cond_1
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->notifyFilterPanelState(Z)V

    :cond_2
    :goto_0
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private toggleFilterPanel()V
    .locals 2

    .line 345
    sget-object v0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "toggleFilterPanel"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 347
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mSelectRoot:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 348
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    .line 349
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mSelectRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 354
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->showSettingUI()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 356
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->hideSettingUI(ZZ)V

    :cond_2
    :goto_0
    return-void
.end method

.method private unRegisterKeyToMonitor()V
    .locals 2

    .line 508
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_0

    .line 509
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v1, "key_video_quality"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_0
    return-void
.end method

.method private updateIndicatorRingScreenLight(Z)V
    .locals 0

    .line 176
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mVssUIManager:Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;

    if-eqz p0, :cond_0

    .line 177
    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->updateIndicatorRingScreenLight(Z)V

    :cond_0
    return-void
.end method

.method private updateViewLayoutParams(Lcom/transsion/camera/app/common/interactive/CommonInteractive;)V
    .locals 2

    .line 182
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mSelectRoot:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    .line 186
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 187
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/interactive/CommonInteractive;->getAppUIRect()Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result p1

    .line 188
    iget v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mBottomUIDefaultHeight:I

    sub-int/2addr p1, v1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 189
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mSelectRoot:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/interactive/CommonInteractive;)Landroid/view/View;
    .locals 1

    .line 139
    invoke-virtual {p3}, Lcom/transsion/camera/app/common/interactive/CommonInteractive;->getIAppUI()Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 141
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->initView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 142
    invoke-direct {p0, p3}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->updateViewLayoutParams(Lcom/transsion/camera/app/common/interactive/CommonInteractive;)V

    .line 144
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->addAnimatorListener()V

    const/4 p1, 0x0

    .line 145
    invoke-direct {p0, p1, p1}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->hideSettingUI(ZZ)V

    .line 146
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->registerKeyToMonitor()V

    .line 148
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mEntryView:Landroid/view/View;

    return-object p0
.end method

.method protected doCreateEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getEntryRootView()Landroid/view/ViewGroup;
    .locals 0

    .line 367
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mEntryRootView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public getEntryView()Landroid/view/View;
    .locals 0

    .line 372
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mEntryView:Landroid/view/View;

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

    const-string p0, "key_video_sight_shock"

    return-object p0
.end method

.method public getKeys()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 430
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 431
    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mbSupportFilter:Z

    if-eqz v1, :cond_0

    const-string v1, "key_video_filter_style"

    .line 432
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "key_video_filter"

    .line 433
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 436
    :cond_0
    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mbSupportEffect:Z

    if-eqz v1, :cond_1

    const-string v1, "key_video_effect_style"

    .line 437
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "key_video_effect"

    .line 438
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 441
    :cond_1
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mbSupportFrame:Z

    if-eqz p0, :cond_2

    const-string p0, "key_video_frame_style"

    .line 442
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p0, "key_video_frame"

    .line 443
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public hideEntryView()V
    .locals 1

    .line 169
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->hideEntryView()V

    .line 170
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/ModuleTransferManager;->unregisterTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    return-void
.end method

.method public needShowOptionBar()Z
    .locals 0

    .line 341
    iget p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mCurrentUIState:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public notifyCameraOperateAction(I)V
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1f

    if-eq p1, v0, :cond_0

    const/16 v0, 0xf

    if-eq p1, v0, :cond_1

    const/16 v0, 0x10

    if-eq p1, v0, :cond_0

    const/16 v0, 0x19

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1a

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 489
    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->setEnable(Z)V

    .line 490
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->showEntryRootView()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 495
    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->setEnable(Z)V

    .line 496
    invoke-direct {p0, p1, p1}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->hideSettingUI(ZZ)V

    :goto_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 2

    .line 471
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mEntryView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 475
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mSelectRoot:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 476
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->hideSettingUI(ZZ)V

    return v0

    :cond_1
    return v1
.end method

.method public onOrientationChanged(I)V
    .locals 0

    .line 404
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onOrientationChanged(I)V

    .line 406
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mVssUIManager:Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;

    if-eqz p0, :cond_0

    .line 407
    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->onOrientationChanged(I)V

    :cond_0
    return-void
.end method

.method public onSettingOptionToggle(Ljava/lang/String;)V
    .locals 1

    .line 331
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 335
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mVssUIManager:Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;

    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->recoverSettingValueAndUI()V

    .line 336
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->toggleFilterPanel()V

    return-void
.end method

.method public setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V
    .locals 0

    .line 362
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    return-void
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 0

    return-void
.end method

.method public setDeviceSettingData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;",
            ">;)V"
        }
    .end annotation

    .line 460
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->setDeviceSettingData(Ljava/util/List;)V

    .line 461
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mVssUIManager:Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mUICallbackImpl:Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->setDeviceSettingData(Ljava/util/List;Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    .line 386
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mVssUIManager:Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockUIManager;->setEnable(Z)V

    return-void
.end method

.method public bridge synthetic setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .locals 0

    .line 466
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-void
.end method

.method public setupEntryView()V
    .locals 2

    const/4 v0, 0x0

    .line 161
    invoke-direct {p0, v0, v0}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->hideSettingUI(ZZ)V

    .line 162
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ModuleTransferManager;->registerTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    .line 163
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getRingScreenLightState()Z

    move-result v0

    .line 164
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->updateIndicatorRingScreenLight(Z)V

    return-void
.end method

.method public unInit()V
    .locals 2

    .line 391
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->unInit()V

    .line 392
    sget-object v0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "unInit createEntryView"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 394
    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->setEnable(Z)V

    .line 395
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->hideEntryRootView()V

    const/4 v0, 0x0

    .line 396
    invoke-direct {p0, v0, v0}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->hideSettingUI(ZZ)V

    .line 397
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->removeAnimatorListener()V

    const/4 v0, 0x0

    .line 398
    iput-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->mEntryView:Landroid/view/View;

    .line 399
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->unRegisterKeyToMonitor()V

    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method
