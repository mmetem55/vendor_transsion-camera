.class public Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;
.super Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;
.source "SlimBodyVideoSettingUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI$UIHandler;
    }
.end annotation


# static fields
.field private static final DURATION:I = 0x12c

.field private static final MSG_ON_FACEBEAUTY_VALUE_CHANGED:I = 0x2

.field private static final MSG_ON_SLIMBODY_VALUE_CHANGED:I = 0x1

.field private static final MSG_ON_VIDEO_BEAUTY_SWITCH_CHANGED:I = 0x3

.field private static final MSG_SETTING_UI_CALL_BACK_FROM_RELATION:I = 0x4

.field public static final OPERATE_SETTING_UI_FB:I = 0x0

.field public static final OPERATE_SETTING_UI_SB:I = 0x1

.field private static final PRECISION:F = 0.01f

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAlphaAnimator:Landroid/animation/ValueAnimator;

.field private final mAlphaInterpolator:Landroid/view/animation/PathInterpolator;

.field private mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mAnimShow:Z

.field private mBottomRootView:Landroid/view/View;

.field private mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

.field private mEntryRootView:Landroid/view/ViewGroup;

.field private mEntryView:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyEntryView;

.field private final mFBSwitchDataCallbackImpl:Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

.field private mFaceBeautyRoot:Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot;

.field private final mFaceBeautySelectedListener:Lcom/transsion/camera/feature/slimbody/adapter/FaceBeautyAdapter$OnItemClickListener;

.field private mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private final mFadeOutInterpolator:Landroid/view/animation/PathInterpolator;

.field private mInteractive:Lcom/transsion/camera/app/common/interactive/CommonInteractive;

.field private mModeArrowRoot:Landroid/view/View;

.field private mNeedShow:Z

.field private mNotifyToUI:Z

.field private final mPathInterpolator:Landroid/view/animation/PathInterpolator;

.field private mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

.field private mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

.field private mShutterPanelRootView:Landroid/view/View;

.field private mSlimBodyBottomBarHeight:I

.field private mSlimBodyIcon:Landroid/widget/ImageView;

.field private mSlimBodySetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private mTopLayout:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;

.field private mTopRootView:Landroid/view/View;

.field private mTranslateAnimator2:Landroid/animation/ValueAnimator;

.field private mTranslateDistance2:F

.field private mTranslateListener:Landroid/animation/AnimatorListenerAdapter;

.field private mTranslateUpdateListener2:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private final mUIHandler:Landroid/os/Handler;

.field private mVideoFaceBeautySwitchSetting:Lcom/transsion/camera/app/common/setting/ISetting;


# direct methods
.method public static synthetic $r8$lambda$TdihYIQthH8m1A4N8f4LTJ6Xy9Y(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;Landroid/view/View;Lcom/transsion/camera/feature/slimbody/data/FBItemData;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->lambda$new$0(Landroid/view/View;Lcom/transsion/camera/feature/slimbody/data/FBItemData;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 44
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "SlimBodyVideoSettingUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 6

    .line 113
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;-><init>()V

    const/4 v0, 0x1

    .line 71
    iput-boolean v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mNotifyToUI:Z

    .line 183
    new-instance v1, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI$1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI$1;-><init>(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mTranslateUpdateListener2:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 193
    new-instance v1, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI$2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI$2;-><init>(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 206
    new-instance v1, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI$3;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI$3;-><init>(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mTranslateListener:Landroid/animation/AnimatorListenerAdapter;

    .line 463
    new-instance v1, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mFaceBeautySelectedListener:Lcom/transsion/camera/feature/slimbody/adapter/FaceBeautyAdapter$OnItemClickListener;

    .line 647
    new-instance v1, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI$4;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI$4;-><init>(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mFBSwitchDataCallbackImpl:Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    .line 662
    new-instance v1, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI$5;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI$5;-><init>(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 114
    sget v1, Lcom/transsion/camera/feature/slimbody/R$dimen;->bottom_layout_height:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mSlimBodyBottomBarHeight:I

    .line 115
    sget v1, Lcom/transsion/camera/feature/slimbody/R$dimen;->slimbody_translate_anim_distance2:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mTranslateDistance2:F

    .line 116
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3e800000    # 0.25f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {p1, v1, v2, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 117
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const v4, 0x3f28f5c3    # 0.66f

    invoke-direct {p1, v1, v2, v4, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    .line 118
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ee147ae    # 0.44f

    const v4, 0x3dcccccd    # 0.1f

    invoke-direct {p1, v1, v2, v4, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mFadeOutInterpolator:Landroid/view/animation/PathInterpolator;

    const/4 p1, 0x2

    new-array v1, p1, [F

    .line 119
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0x12c

    .line 120
    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-array p1, p1, [F

    .line 123
    iget v1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mTranslateDistance2:F

    neg-float v1, v1

    const/4 v5, 0x0

    aput v1, p1, v5

    aput v2, p1, v0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mTranslateAnimator2:Landroid/animation/ValueAnimator;

    .line 124
    invoke-virtual {p1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 126
    new-instance p1, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI$UIHandler;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI$UIHandler;-><init>(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mUIHandler:Landroid/os/Handler;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$000()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 43
    sget-object v0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->doFaceBeautyValueChanged(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->doVideoBeautySwitchChanged(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;)Landroid/view/View;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mBottomRootView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;)Z
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->settingUIAnimShowOrHide()Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;FF)Z
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->isFloatEqual(FF)Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->computeFilterRootVisibility()V

    return-void
.end method

.method static synthetic access$700(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mNotifyToUI:Z

    return p0
.end method

.method static synthetic access$800(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;)Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    return-object p0
.end method

.method static synthetic access$900(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;)Landroid/os/Handler;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mUIHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private addAnimatorListener()V
    .locals 2

    .line 225
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 226
    iget-object v1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mTranslateAnimator2:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 230
    iget-object v1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mTranslateUpdateListener2:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 231
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mTranslateAnimator2:Landroid/animation/ValueAnimator;

    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mTranslateListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_1
    return-void
.end method

.method private cancelAnimation()V
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mTranslateAnimator2:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 311
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mTranslateAnimator2:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    return-void
.end method

.method private computeFilterRootVisibility()V
    .locals 3

    .line 176
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mBottomRootView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 177
    iget-boolean v2, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mAnimShow:Z

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    .line 178
    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 180
    :cond_1
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->setAnimState(Z)V

    return-void
.end method

.method private computeSwitchBarSelectedState(I)V
    .locals 5

    .line 316
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mTopLayout:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;

    if-eqz v0, :cond_6

    .line 317
    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->notifySwitchBarSelected(I)V

    .line 319
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mSlimBodySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez v0, :cond_0

    .line 320
    sget-object p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "computeSwitchBarSelectedState mSlimBodySetting is null!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 324
    :cond_0
    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_5

    const-string v2, "key_video_slimbody_facebeauty_switch"

    const/4 v3, 0x1

    if-eq p1, v3, :cond_3

    const/4 v4, 0x2

    if-eq p1, v4, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 342
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p1

    const-string v4, "0"

    .line 341
    invoke-virtual {v0, v2, v4, p1, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 344
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mSlimBodySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p1, v3}, Lcom/transsion/camera/app/common/setting/ISetting;->turnOnSwitch(Z)V

    .line 345
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p0, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->turnOnSwitch(Z)V

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    .line 334
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p1

    const-string v4, "1"

    .line 333
    invoke-virtual {v0, v2, v4, p1, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 336
    :cond_4
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mSlimBodySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p1, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->turnOnSwitch(Z)V

    .line 337
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p0, v3}, Lcom/transsion/camera/app/common/setting/ISetting;->turnOnSwitch(Z)V

    goto :goto_0

    .line 328
    :cond_5
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mSlimBodySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p1, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->turnOnSwitch(Z)V

    .line 329
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p0, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->turnOnSwitch(Z)V

    :cond_6
    :goto_0
    return-void
.end method

.method private doFaceBeautyValueChanged(Ljava/lang/String;)V
    .locals 0

    .line 688
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mFaceBeautyRoot:Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot;

    if-eqz p0, :cond_0

    .line 689
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot;->notifyValueChangedToUI(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private doVideoBeautySwitchChanged(Ljava/lang/String;)V
    .locals 1

    .line 694
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez v0, :cond_0

    .line 695
    sget-object p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "doVideoBeautySwitchChanged mFaceBeautySetting is null."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "video_facebeauty_on"

    .line 698
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 699
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->turnOnSwitch(Z)V

    goto :goto_0

    :cond_1
    const-string v0, "video_facebeauty_off"

    .line 700
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 701
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->turnOnSwitch(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method private hideEntryRootView()V
    .locals 2

    .line 501
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mEntryView:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyEntryView;

    if-eqz v0, :cond_1

    .line 502
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

    .line 504
    iput-boolean v1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mNeedShow:Z

    .line 505
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mEntryView:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyEntryView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private hideSettingUI()V
    .locals 2

    .line 352
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mBottomRootView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 355
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->cancelAnimation()V

    .line 356
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mBottomRootView:Landroid/view/View;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 357
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 358
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mBottomRootView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 359
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mBottomRootView:Landroid/view/View;

    iget v1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mTranslateDistance2:F

    neg-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 362
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mSettingOptionControl:Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v1, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;->sinkUI(ZIZ)V

    .line 364
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mModeArrowRoot:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 365
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 368
    :cond_2
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

    if-eqz p0, :cond_3

    .line 369
    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->transitionShutterToRegular()V

    :cond_3
    return-void
.end method

.method private isFloatEqual(FF)Z
    .locals 0

    sub-float/2addr p1, p2

    .line 168
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

.method private synthetic lambda$new$0(Landroid/view/View;Lcom/transsion/camera/feature/slimbody/data/FBItemData;I)V
    .locals 1

    if-eqz p2, :cond_2

    .line 465
    iget-object p1, p2, Lcom/transsion/camera/feature/slimbody/data/FBItemData;->effectId:Ljava/lang/String;

    .line 467
    iget-object p2, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p2, :cond_0

    .line 468
    sget-object p2, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnItemClickListener], value:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 469
    iget-object p2, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p2, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    :cond_0
    const-string p2, "off"

    .line 471
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 472
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mVideoFaceBeautySwitchSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string p1, "video_facebeauty_off"

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    goto :goto_0

    .line 474
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mVideoFaceBeautySwitchSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string p1, "video_facebeauty_on"

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private reOpenToSavedValue()V
    .locals 4

    .line 156
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v0, :cond_1

    .line 157
    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    .line 158
    iget-object v1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISetting;->getDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "key_video_slimbody_face_beauty"

    invoke-virtual {v0, v3, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "off"

    .line 159
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    .line 162
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    :cond_1
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

    .line 676
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 677
    iget-object v1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v2, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v1, v0, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private removeAnimatorListener()V
    .locals 2

    .line 237
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 238
    iget-object v1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mTranslateAnimator2:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 242
    iget-object v1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mTranslateUpdateListener2:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 243
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mTranslateAnimator2:Landroid/animation/ValueAnimator;

    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mTranslateListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_1
    return-void
.end method

.method private setAnimState(Z)V
    .locals 0

    .line 486
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mEntryView:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyEntryView;

    if-eqz p0, :cond_0

    .line 487
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyEntryView;->setAnimState(Z)V

    :cond_0
    return-void
.end method

.method private setEntryViewEnable(Z)V
    .locals 0

    .line 480
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mEntryView:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyEntryView;

    if-eqz p0, :cond_0

    .line 481
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyEntryView;->setEnable(Z)V

    :cond_0
    return-void
.end method

.method private settingUIAnimShowOrHide()Z
    .locals 8

    .line 375
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mBottomRootView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mShutterPanelRootView:Landroid/view/View;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 376
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_6

    :cond_0
    const/4 v0, 0x1

    .line 380
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->setAnimState(Z)V

    .line 381
    iget-object v2, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mBottomRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v2

    const/4 v3, 0x0

    cmpg-float v4, v2, v3

    if-gtz v4, :cond_1

    move v4, v0

    goto :goto_0

    :cond_1
    move v4, v1

    .line 382
    :goto_0
    iput-boolean v4, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mAnimShow:Z

    if-eqz v4, :cond_2

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_2
    move v4, v3

    .line 384
    :goto_1
    iget-object v5, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    const/4 v6, 0x2

    new-array v7, v6, [F

    aput v2, v7, v1

    aput v4, v7, v0

    invoke-virtual {v5, v7}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 385
    iget-object v2, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mBottomRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    cmpg-float v4, v2, v3

    if-gez v4, :cond_3

    goto :goto_2

    .line 386
    :cond_3
    iget v3, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mTranslateDistance2:F

    neg-float v3, v3

    .line 387
    :goto_2
    iget-object v5, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mTranslateAnimator2:Landroid/animation/ValueAnimator;

    new-array v6, v6, [F

    aput v2, v6, v1

    aput v3, v6, v0

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 388
    iget-boolean v2, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mAnimShow:Z

    if-eqz v2, :cond_4

    .line 389
    iget-object v2, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v5, 0x64

    invoke-virtual {v2, v5, v6}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 390
    iget-object v2, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mTranslateAnimator2:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v5, v6}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 391
    iget-object v2, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 392
    iget-object v2, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mTranslateAnimator2:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_3

    .line 394
    :cond_4
    iget-object v2, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v5, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 395
    iget-object v2, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mTranslateAnimator2:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v5, v6}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 396
    iget-object v2, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mFadeOutInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 397
    iget-object v2, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mTranslateAnimator2:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mFadeOutInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 399
    :goto_3
    iget-object v2, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 400
    iget-object v2, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mTranslateAnimator2:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 402
    iget-object v2, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

    if-eqz v2, :cond_6

    .line 403
    iget-boolean v3, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mAnimShow:Z

    if-eqz v3, :cond_5

    .line 404
    invoke-interface {v2}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->transitionShutterToSmall()V

    goto :goto_4

    .line 406
    :cond_5
    invoke-interface {v2}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->transitionShutterToRegular()V

    :cond_6
    :goto_4
    if-gez v4, :cond_7

    .line 411
    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mSettingOptionControl:Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;

    invoke-interface {v2, v0, v1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;->sinkUI(ZIZ)V

    goto :goto_5

    .line 413
    :cond_7
    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mSettingOptionControl:Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;

    invoke-interface {v2, v1, v1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;->sinkUI(ZIZ)V

    .line 416
    :goto_5
    iget-object v2, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mModeArrowRoot:Landroid/view/View;

    if-eqz v2, :cond_9

    .line 417
    iget-boolean p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mAnimShow:Z

    if-eqz p0, :cond_8

    const/4 v1, 0x4

    :cond_8
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    return v0

    :cond_a
    :goto_6
    return v1
.end method

.method private showEntryRootView()V
    .locals 2

    .line 492
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mEntryView:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyEntryView;

    if-eqz v0, :cond_0

    .line 493
    iget-boolean v1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mNeedShow:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 494
    iput-boolean v1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mNeedShow:Z

    .line 495
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
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

    .line 682
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 683
    iget-object v1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v2, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v1, v0, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateInteractiveUI()V
    .locals 6

    .line 283
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result v0

    .line 284
    iget v1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mSlimBodyBottomBarHeight:I

    sub-int v1, v0, v1

    .line 285
    sget-object v2, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

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

    .line 287
    iget-object v2, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mBottomRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingStart()I

    move-result v2

    .line 288
    iget-object v3, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mBottomRootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingEnd()I

    move-result v3

    .line 289
    iget-object v4, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mBottomRootView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    .line 290
    iget-object v5, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mShutterPanelRootView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    if-le v1, v5, :cond_0

    .line 292
    iget-object v5, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mBottomRootView:Landroid/view/View;

    invoke-virtual {v5, v2, v4, v3, v1}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    if-lez v0, :cond_1

    .line 296
    iget-object v1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mTopRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    .line 297
    iget-object v2, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mTopRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingEnd()I

    move-result v2

    .line 298
    iget-object v3, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mTopRootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    .line 299
    iget-object v4, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mTopRootView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    if-le v0, v4, :cond_1

    .line 301
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mTopRootView:Landroid/view/View;

    invoke-virtual {p0, v1, v3, v2, v0}, Landroid/view/View;->setPadding(IIII)V

    :cond_1
    return-void
.end method


# virtual methods
.method public createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/interactive/CommonInteractive;)Landroid/view/View;
    .locals 3

    .line 425
    sget-object v0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[createEntryView]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 426
    iput-object p2, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mEntryRootView:Landroid/view/ViewGroup;

    .line 427
    iput-object p3, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mInteractive:Lcom/transsion/camera/app/common/interactive/CommonInteractive;

    .line 428
    sget p3, Lcom/transsion/camera/feature/slimbody/R$layout;->main_video_layout:I

    const/4 v1, 0x0

    invoke-virtual {p1, p3, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyEntryView;

    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mEntryView:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyEntryView;

    .line 429
    sget p2, Lcom/transsion/camera/feature/slimbody/R$id;->slimbody_bar:I

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mSlimBodyIcon:Landroid/widget/ImageView;

    const/16 p2, 0x8

    .line 430
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 431
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mInteractive:Lcom/transsion/camera/app/common/interactive/CommonInteractive;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/interactive/CommonInteractive;->getShutterPanelRootView()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mShutterPanelRootView:Landroid/view/View;

    .line 432
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mInteractive:Lcom/transsion/camera/app/common/interactive/CommonInteractive;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/interactive/CommonInteractive;->getModeArrowRoot()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mModeArrowRoot:Landroid/view/View;

    .line 433
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mEntryView:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyEntryView;

    sget p2, Lcom/transsion/camera/feature/slimbody/R$id;->bottom_root_view:I

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mBottomRootView:Landroid/view/View;

    .line 434
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mEntryView:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyEntryView;

    sget p2, Lcom/transsion/camera/feature/slimbody/R$id;->top_root_video_view:I

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mTopRootView:Landroid/view/View;

    .line 435
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->addAnimatorListener()V

    .line 436
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mEntryView:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyEntryView;

    sget p2, Lcom/transsion/camera/feature/slimbody/R$id;->facebeauty_root:I

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot;

    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mFaceBeautyRoot:Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot;

    .line 437
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mEntryView:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyEntryView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/feature/slimbody/R$dimen;->video_face_beauty_first_item_padding:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 438
    iget-object p2, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mEntryView:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyEntryView;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/transsion/camera/feature/slimbody/R$dimen;->video_face_beauty_item_padding:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 439
    iget-object p3, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mFaceBeautyRoot:Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot;

    invoke-virtual {p3, p1, p2}, Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot;->setItemPadding(II)V

    .line 440
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p1, :cond_0

    .line 441
    iget-object p2, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mFaceBeautyRoot:Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSupport()Ljava/util/List;

    move-result-object p1

    iget-object p3, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    .line 442
    invoke-interface {p3}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p3

    iget-object v2, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mFaceBeautySelectedListener:Lcom/transsion/camera/feature/slimbody/adapter/FaceBeautyAdapter$OnItemClickListener;

    .line 441
    invoke-virtual {p2, p1, p3, v2, v1}, Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot;->updateAdapter(Ljava/util/List;Ljava/lang/String;Lcom/transsion/camera/feature/slimbody/adapter/FaceBeautyAdapter$OnItemClickListener;Z)V

    .line 444
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mEntryView:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyEntryView;

    sget p2, Lcom/transsion/camera/feature/slimbody/R$id;->topbar_video_root:I

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;

    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mTopLayout:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;

    const/4 p2, 0x1

    .line 446
    invoke-virtual {p1, p2, p2, v1}, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->notifyState(IZZ)V

    .line 447
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->updateInteractiveUI()V

    .line 448
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->hideSettingUI()V

    .line 450
    iput-boolean p2, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mNeedShow:Z

    .line 451
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->setEntryViewEnable(Z)V

    .line 452
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mVideoFaceBeautySwitchSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p1, :cond_1

    .line 453
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p1

    .line 454
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->doVideoBeautySwitchChanged(Ljava/lang/String;)V

    .line 455
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "createEntryView"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string p2, "video_facebeauty_on"

    .line 456
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 457
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->reOpenToSavedValue()V

    .line 460
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mEntryView:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyEntryView;

    return-object p0
.end method

.method protected doCreateEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getEntryRootView()Landroid/view/ViewGroup;
    .locals 0

    .line 583
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mEntryRootView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public getEntryView()Landroid/view/View;
    .locals 0

    .line 578
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mEntryView:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyEntryView;

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

    const-string p0, "key_video_slimbody_info"

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

    .line 608
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "key_video_slimbody_info"

    .line 609
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "key_video_slimbody_face_beauty"

    .line 610
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "key_video_facebeauty"

    .line 611
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

    .line 254
    sget-object v0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[hideEntryView]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 255
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->hideSettingUI()V

    return-void
.end method

.method public notifyCameraOperateAction(I)V
    .locals 3

    .line 512
    sget-object v0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SlimBodySettingUI] notifyCameraOperateAction action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    const/4 v2, 0x6

    if-eq p1, v2, :cond_2

    const/4 v2, 0x7

    if-eq p1, v2, :cond_1

    const/16 v2, 0x9

    if-eq p1, v2, :cond_4

    const/16 v2, 0x23

    if-eq p1, v2, :cond_3

    const/16 v2, 0x24

    if-eq p1, v2, :cond_0

    const/16 v2, 0x36

    if-eq p1, v2, :cond_5

    const/16 v2, 0x37

    if-eq p1, v2, :cond_4

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto :goto_0

    .line 527
    :pswitch_0
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->hideSettingUI()V

    .line 528
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->hideEntryRootView()V

    goto :goto_0

    .line 522
    :cond_0
    :pswitch_1
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->showEntryRootView()V

    goto :goto_0

    .line 548
    :cond_1
    iput-boolean v1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mNotifyToUI:Z

    goto :goto_0

    .line 545
    :cond_2
    iput-boolean v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mNotifyToUI:Z

    goto :goto_0

    .line 516
    :cond_3
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->hideEntryRootView()V

    goto :goto_0

    .line 542
    :cond_4
    :pswitch_2
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->setEnable(Z)V

    goto :goto_0

    .line 534
    :cond_5
    :pswitch_3
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->setEnable(Z)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x19
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onBackPressed()Z
    .locals 2

    .line 260
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mEntryView:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyEntryView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mBottomRootView:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 267
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mFaceBeautyRoot:Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 268
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->settingUIAnimShowOrHide()Z

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method public onSettingOptionToggle(Ljava/lang/String;)V
    .locals 5

    .line 132
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mBottomRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    const/4 v2, 0x1

    if-gtz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v3, "key_video_facebeauty"

    .line 134
    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 135
    sget-object p1, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSettingOptionToggle isCollapse: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", alpha: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 136
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->settingUIAnimShowOrHide()Z

    move-result p1

    if-eqz v1, :cond_3

    if-eqz p1, :cond_3

    .line 138
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mVideoFaceBeautySwitchSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p1, :cond_3

    .line 139
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p1

    .line 140
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "video_facebeauty_on"

    .line 141
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "off"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 142
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mVideoFaceBeautySwitchSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p1, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 143
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->reOpenToSavedValue()V

    .line 144
    invoke-direct {p0, v2}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->computeSwitchBarSelectedState(I)V

    goto :goto_1

    :cond_2
    if-nez v1, :cond_3

    .line 150
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->settingUIAnimShowOrHide()Z

    :cond_3
    :goto_1
    return-void
.end method

.method public restoreInteractiveView()V
    .locals 0

    .line 644
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->hideSettingUI()V

    return-void
.end method

.method public setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    return-void
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 0

    .line 637
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mVideoFaceBeautySwitchSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p1, :cond_0

    .line 638
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mFBSwitchDataCallbackImpl:Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/setting/ISetting;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    :cond_0
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

    .line 617
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->setDeviceSettingData(Ljava/util/List;)V

    if-nez p1, :cond_0

    .line 619
    sget-object p1, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDeviceSettingData is null,key = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 622
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;

    .line 623
    sget-object v1, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

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

    .line 624
    iget-object v1, v0, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->key:Ljava/lang/String;

    const-string v2, "key_video_slimbody_info"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 625
    iget-object v0, v0, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->iSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    iput-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mSlimBodySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    goto :goto_0

    .line 626
    :cond_2
    iget-object v1, v0, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->key:Ljava/lang/String;

    const-string v2, "key_video_slimbody_face_beauty"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 627
    iget-object v0, v0, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->iSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    iput-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    goto :goto_0

    .line 628
    :cond_3
    iget-object v1, v0, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->key:Ljava/lang/String;

    const-string v2, "key_video_facebeauty"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 629
    iget-object v0, v0, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->iSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    iput-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mVideoFaceBeautySwitchSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    goto :goto_0

    .line 632
    :cond_4
    invoke-virtual {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->getKeys()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->registerKeyToMonitor(Ljava/util/List;)V

    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    .line 593
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->setEntryViewEnable(Z)V

    return-void
.end method

.method public bridge synthetic setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .locals 0

    .line 707
    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-void
.end method

.method public setShutterControl(Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;)V
    .locals 0

    .line 712
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->setShutterControl(Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;)V

    .line 713
    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

    return-void
.end method

.method public unInit()V
    .locals 2

    .line 561
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->unInit()V

    .line 562
    sget-object v0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[unInit]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 563
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mUIHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 564
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mVideoFaceBeautySwitchSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v0, :cond_0

    .line 565
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    .line 567
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->hideEntryRootView()V

    .line 568
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->hideSettingUI()V

    .line 569
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_1

    .line 570
    invoke-virtual {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->getKeys()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->unRegisterKeyToMonitor(Ljava/util/List;)V

    .line 572
    :cond_1
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->removeAnimatorListener()V

    .line 573
    iput-object v1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->mEntryView:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyEntryView;

    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .locals 0

    .line 588
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->updateInteractiveUI()V

    return-void
.end method
