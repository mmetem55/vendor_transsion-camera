.class public Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;
.super Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;
.source "FunVideoBeautySettingUI.java"


# static fields
.field private static final DURATION:I = 0x12c

.field private static final PRECISION:F = 0.01f

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAlphaInAnimator:Landroid/animation/ValueAnimator;

.field private final mAlphaInterpolator:Landroid/view/animation/PathInterpolator;

.field private mAlphaOutAnimator:Landroid/animation/ValueAnimator;

.field private mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mAnimShow:Z

.field private mBottomRootView:Landroid/view/View;

.field protected mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

.field private mCameraSwitching:Z

.field private mEntryRootView:Landroid/view/ViewGroup;

.field private mEntryView:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyEntryView;

.field private mFaceBeautyIcon:Landroid/widget/ImageView;

.field private mFaceBeautyRoot:Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot;

.field private final mFaceBeautySelectedListener:Lcom/transsion/camera/feature/slimbody/adapter/FaceBeautyAdapter$OnItemClickListener;

.field private mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private final mFadeOutInterpolator:Landroid/view/animation/PathInterpolator;

.field private mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

.field private mISFunVideoSettingUIShowing:Z

.field private mIndicatorClickListener:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$BarClickListener;

.field private mIsFilterSettingShowing:Z

.field private mIsRecording:Z

.field private mIsVideoBeautyIsShowing:Z

.field private mNeedShow:Z

.field private final mPathInterpolator:Landroid/view/animation/PathInterpolator;

.field private mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

.field private mShutterPanelRootView:Landroid/view/View;

.field private mSlimBodyBottomBarHeight:I

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private mTopLayout:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;

.field private mTopRootView:Landroid/view/View;

.field private mTranslateAnimator:Landroid/animation/ValueAnimator;

.field private mTranslateDistance:F

.field private mTranslateUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# direct methods
.method public static synthetic $r8$lambda$Gf_UEidV9iW0-5e_Iz3GhrzI4l4(Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;Landroid/view/View;Lcom/transsion/camera/feature/slimbody/data/FBItemData;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->lambda$new$0(Landroid/view/View;Lcom/transsion/camera/feature/slimbody/data/FBItemData;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$iMoi0spFBL6wbclRMtAJb0Nrp5s(Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->lambda$new$1(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 35
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "FunVideoBeautySettingUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 6

    .line 142
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mIsVideoBeautyIsShowing:Z

    .line 55
    iput-boolean v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mIsFilterSettingShowing:Z

    .line 56
    iput-boolean v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mISFunVideoSettingUIShowing:Z

    .line 62
    iput-boolean v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mCameraSwitching:Z

    .line 63
    iput-boolean v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mIsRecording:Z

    const/4 v1, 0x0

    .line 65
    iput-object v1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    .line 67
    new-instance v1, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI$1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI$1;-><init>(Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mIndicatorClickListener:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$BarClickListener;

    .line 94
    new-instance v1, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI$2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI$2;-><init>(Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mTranslateUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 105
    new-instance v1, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI$3;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI$3;-><init>(Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 412
    new-instance v1, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mFaceBeautySelectedListener:Lcom/transsion/camera/feature/slimbody/adapter/FaceBeautyAdapter$OnItemClickListener;

    .line 632
    new-instance v1, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    .line 143
    sget-object v1, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "init"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 144
    sget v1, Lcom/transsion/camera/feature/slimbody/R$dimen;->bottom_layout_height:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mSlimBodyBottomBarHeight:I

    .line 145
    sget v1, Lcom/transsion/camera/feature/slimbody/R$dimen;->slimbody_translate_anim_distance:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mTranslateDistance:F

    .line 146
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3e800000    # 0.25f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {p1, v1, v2, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 147
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const v4, 0x3f28f5c3    # 0.66f

    invoke-direct {p1, v1, v2, v4, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    .line 148
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ee147ae    # 0.44f

    const v4, 0x3dcccccd    # 0.1f

    invoke-direct {p1, v1, v2, v4, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mFadeOutInterpolator:Landroid/view/animation/PathInterpolator;

    const/4 p1, 0x2

    new-array v1, p1, [F

    .line 150
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mAlphaInAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0x12c

    .line 151
    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 152
    iget-object v1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mAlphaInAnimator:Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI$4;

    invoke-direct {v5, p0}, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI$4;-><init>(Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;)V

    invoke-virtual {v1, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-array v1, p1, [F

    .line 171
    fill-array-data v1, :array_1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mAlphaOutAnimator:Landroid/animation/ValueAnimator;

    .line 172
    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 173
    iget-object v1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mAlphaOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI$5;

    invoke-direct {v5, p0}, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI$5;-><init>(Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;)V

    invoke-virtual {v1, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-array p1, p1, [F

    .line 192
    iget v1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mTranslateDistance:F

    neg-float v1, v1

    aput v1, p1, v0

    const/4 v0, 0x1

    aput v2, p1, v0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    .line 193
    invoke-virtual {p1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

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

.method static synthetic access$000(Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mCameraSwitching:Z

    return p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;)Z
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->settingUIAnimShowOrHide()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;)F
    .locals 0

    .line 34
    iget p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mTranslateDistance:F

    return p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;)Landroid/view/View;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mBottomRootView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mISFunVideoSettingUIShowing:Z

    return p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->cancelAnimation()V

    return-void
.end method

.method static synthetic access$600(Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;Z)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->setAnimState(Z)V

    return-void
.end method

.method private addAnimatorListener()V
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mAlphaInAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mAlphaOutAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    .line 123
    iget-object v1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 124
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mAlphaOutAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 127
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mTranslateUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_1
    return-void
.end method

.method private cancelAnimation()V
    .locals 2

    const/4 v0, 0x0

    .line 253
    iput-boolean v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mAnimShow:Z

    .line 254
    iget-object v1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mAlphaInAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    .line 255
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 257
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mAlphaOutAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1

    .line 258
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 260
    :cond_1
    iget-object v1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_2

    .line 261
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 263
    :cond_2
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->setAnimState(Z)V

    return-void
.end method

.method private computeFilterRootVisibility()V
    .locals 3

    .line 87
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mBottomRootView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 88
    iget-boolean v2, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mAnimShow:Z

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    .line 89
    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 91
    :cond_1
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->setAnimState(Z)V

    return-void
.end method

.method private hideEntryRootView()V
    .locals 2

    .line 447
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mEntryView:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyEntryView;

    if-eqz v0, :cond_1

    .line 448
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

    .line 450
    iput-boolean v1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mNeedShow:Z

    .line 451
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mEntryView:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyEntryView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private hideSettingUI()V
    .locals 4

    const/4 v0, 0x0

    .line 267
    iput-boolean v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mIsVideoBeautyIsShowing:Z

    .line 268
    iget-object v1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mBottomRootView:Landroid/view/View;

    if-nez v1, :cond_0

    return-void

    .line 269
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->cancelAnimation()V

    .line 270
    iget-object v1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mBottomRootView:Landroid/view/View;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 271
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 272
    iget-object v1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mBottomRootView:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 273
    iget-object v1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mBottomRootView:Landroid/view/View;

    iget v3, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mTranslateDistance:F

    neg-float v3, v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 276
    :cond_1
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mSettingOptionControl:Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;

    if-eqz v1, :cond_2

    .line 277
    invoke-interface {v1, v0, v0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;->sinkUI(ZIZ)V

    .line 280
    :cond_2
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mShutterPanelRootView:Landroid/view/View;

    if-eqz p0, :cond_3

    .line 281
    invoke-virtual {p0, v2}, Landroid/view/View;->setTranslationY(F)V

    :cond_3
    return-void
.end method

.method private isFloatEqual(FF)Z
    .locals 0

    sub-float/2addr p1, p2

    .line 79
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
    .locals 0

    if-eqz p2, :cond_0

    .line 414
    iget-object p1, p2, Lcom/transsion/camera/feature/slimbody/data/FBItemData;->effectId:Ljava/lang/String;

    .line 415
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p0, :cond_0

    .line 416
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$1(Z)V
    .locals 0

    .line 632
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->updateRingScreenLight(Z)V

    return-void
.end method

.method private removeAnimatorListener()V
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mAlphaInAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mAlphaOutAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    .line 133
    iget-object v1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 134
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mAlphaOutAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 137
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mTranslateUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_1
    return-void
.end method

.method private setAnimState(Z)V
    .locals 0

    .line 428
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mEntryView:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyEntryView;

    if-eqz p0, :cond_0

    .line 429
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyEntryView;->setAnimState(Z)V

    :cond_0
    return-void
.end method

.method private setEntryViewEnable(Z)V
    .locals 0

    .line 422
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mEntryView:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyEntryView;

    if-eqz p0, :cond_0

    .line 423
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyEntryView;->setEnable(Z)V

    :cond_0
    return-void
.end method

.method private settingUIAnimShowOrHide()Z
    .locals 7

    .line 300
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mAlphaInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 301
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mAlphaOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 302
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 303
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mBottomRootView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mShutterPanelRootView:Landroid/view/View;

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    const-string v0, "1"

    .line 306
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->updateFeatureSwitch(Ljava/lang/String;)V

    .line 307
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mFaceBeautyRoot:Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const/4 v0, 0x1

    .line 308
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->setAnimState(Z)V

    .line 309
    iget-object v2, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mBottomRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v2

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v1

    .line 310
    :goto_0
    iput-boolean v2, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mAnimShow:Z

    .line 313
    iget-object v2, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mShutterPanelRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    cmpg-float v4, v2, v3

    if-gez v4, :cond_2

    goto :goto_1

    .line 314
    :cond_2
    iget v3, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mTranslateDistance:F

    neg-float v3, v3

    .line 315
    :goto_1
    iget-object v4, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    const/4 v5, 0x2

    new-array v6, v5, [F

    aput v2, v6, v1

    aput v3, v6, v0

    invoke-virtual {v4, v6}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 316
    iget-boolean v3, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mIsVideoBeautyIsShowing:Z

    if-nez v3, :cond_3

    .line 317
    iget-object v3, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    new-array v4, v5, [F

    aput v2, v4, v1

    iget v2, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mTranslateDistance:F

    aput v2, v4, v0

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 319
    :cond_3
    iget-boolean v2, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mIsVideoBeautyIsShowing:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    if-eqz v2, :cond_4

    const/16 v3, 0x31

    .line 320
    invoke-interface {v2, v3}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 321
    iput-boolean v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mIsVideoBeautyIsShowing:Z

    goto :goto_2

    .line 322
    :cond_4
    iget-object v2, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    if-eqz v2, :cond_5

    const/16 v3, 0x32

    .line 323
    invoke-interface {v2, v3}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 324
    iput-boolean v1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mIsVideoBeautyIsShowing:Z

    .line 326
    :cond_5
    :goto_2
    iget-boolean v2, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mAnimShow:Z

    if-eqz v2, :cond_6

    .line 327
    iget-object v2, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mAlphaInAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0x64

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 328
    iget-object v2, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 329
    iget-object v2, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mAlphaInAnimator:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 330
    iget-object v2, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 331
    iget-object v2, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mAlphaInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 332
    iget-object v2, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_3

    .line 334
    :cond_6
    iget-object v2, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mAlphaOutAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 335
    iget-object v2, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 336
    iget-object v2, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mAlphaOutAnimator:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mFadeOutInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 337
    iget-object v2, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mFadeOutInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 338
    iget-object v2, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mAlphaOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 339
    iget-object v2, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 341
    :goto_3
    sget-object v2, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[settingUIAnimShowOrHide] mAnimShow:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mAnimShow:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 342
    iget-object v2, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

    if-eqz v2, :cond_8

    .line 343
    iget-boolean v2, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mAnimShow:Z

    if-eqz v2, :cond_7

    .line 344
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mSettingOptionControl:Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;

    invoke-interface {p0, v0, v1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;->sinkUI(ZIZ)V

    goto :goto_4

    .line 347
    :cond_7
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mSettingOptionControl:Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;

    invoke-interface {p0, v1, v1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;->sinkUI(ZIZ)V

    :cond_8
    :goto_4
    return v0

    :cond_9
    :goto_5
    return v1
.end method

.method private showEntryRootView()V
    .locals 3

    .line 434
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mEntryView:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyEntryView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mFaceBeautyIcon:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 435
    iget-boolean v1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mNeedShow:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 436
    iput-boolean v1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mNeedShow:Z

    .line 437
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 438
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mFaceBeautyIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 439
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mSettingOptionControl:Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;

    if-eqz v0, :cond_0

    iget-boolean v2, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mIsFilterSettingShowing:Z

    if-nez v2, :cond_0

    iget-boolean p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mISFunVideoSettingUIShowing:Z

    if-nez p0, :cond_0

    .line 440
    invoke-interface {v0, v1, v1, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;->sinkUI(ZIZ)V

    :cond_0
    return-void
.end method

.method private updateFeatureSwitch(Ljava/lang/String;)V
    .locals 0

    .line 292
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 293
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mTopLayout:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    .line 294
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->notifySwitchBarSelected(I)V

    :cond_0
    return-void
.end method

.method private updateInteractiveUI()V
    .locals 6

    .line 229
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result v0

    .line 230
    iget v1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mSlimBodyBottomBarHeight:I

    sub-int v1, v0, v1

    .line 231
    sget-object v2, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

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

    .line 233
    iget-object v2, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mBottomRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingStart()I

    move-result v2

    .line 234
    iget-object v3, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mBottomRootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingEnd()I

    move-result v3

    .line 235
    iget-object v4, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mBottomRootView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    .line 236
    iget-object v5, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mShutterPanelRootView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    if-le v1, v5, :cond_0

    .line 238
    iget-object v5, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mBottomRootView:Landroid/view/View;

    invoke-virtual {v5, v2, v4, v3, v1}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    if-lez v0, :cond_1

    .line 242
    iget-object v1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mTopRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    .line 243
    iget-object v2, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mTopRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingEnd()I

    move-result v2

    .line 244
    iget-object v3, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mTopRootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    .line 245
    iget-object v4, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mTopRootView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    if-le v0, v4, :cond_1

    .line 247
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mTopRootView:Landroid/view/View;

    invoke-virtual {p0, v1, v3, v2, v0}, Landroid/view/View;->setPadding(IIII)V

    :cond_1
    return-void
.end method

.method private updateRingScreenLight(Z)V
    .locals 3

    .line 635
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mFaceBeautyRoot:Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot;

    if-eqz v0, :cond_0

    .line 636
    iget-object v1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSupport()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    .line 637
    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mFaceBeautySelectedListener:Lcom/transsion/camera/feature/slimbody/adapter/FaceBeautyAdapter$OnItemClickListener;

    .line 636
    invoke-virtual {v0, v1, v2, p0, p1}, Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot;->updateAdapter(Ljava/util/List;Ljava/lang/String;Lcom/transsion/camera/feature/slimbody/adapter/FaceBeautyAdapter$OnItemClickListener;Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/interactive/CommonInteractive;)Landroid/view/View;
    .locals 3

    .line 357
    sget-object v0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[createEntryView]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 358
    iput-object p2, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mEntryRootView:Landroid/view/ViewGroup;

    .line 359
    sget v0, Lcom/transsion/camera/feature/slimbody/R$layout;->main_video_layout:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyEntryView;

    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mEntryView:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyEntryView;

    .line 360
    invoke-virtual {p3}, Lcom/transsion/camera/app/common/interactive/CommonInteractive;->getShutterPanelRootView()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mShutterPanelRootView:Landroid/view/View;

    .line 361
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mEntryView:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyEntryView;

    sget p2, Lcom/transsion/camera/feature/slimbody/R$id;->bottom_root_view:I

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mBottomRootView:Landroid/view/View;

    const/4 p2, 0x0

    .line 362
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 363
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mBottomRootView:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 364
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mBottomRootView:Landroid/view/View;

    iget p3, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mTranslateDistance:F

    neg-float p3, p3

    invoke-virtual {p1, p3}, Landroid/view/View;->setTranslationY(F)V

    .line 365
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mEntryView:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyEntryView;

    sget p3, Lcom/transsion/camera/feature/slimbody/R$id;->top_root_video_view:I

    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mTopRootView:Landroid/view/View;

    .line 366
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mEntryView:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyEntryView;

    sget p3, Lcom/transsion/camera/feature/slimbody/R$id;->facebeauty_root:I

    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot;

    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mFaceBeautyRoot:Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot;

    .line 367
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mEntryView:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyEntryView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/transsion/camera/feature/slimbody/R$dimen;->fun_video_face_beauty_first_item_padding:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 368
    iget-object p3, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mEntryView:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyEntryView;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/transsion/camera/feature/slimbody/R$dimen;->fun_video_face_beauty_item_padding:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    .line 369
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mFaceBeautyRoot:Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot;

    invoke-virtual {v0, p1, p3}, Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot;->setItemPadding(II)V

    .line 370
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mFaceBeautyRoot:Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot;

    iget-object p3, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p3}, Lcom/transsion/camera/app/common/setting/ISetting;->getSupport()Ljava/util/List;

    move-result-object p3

    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    .line 371
    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mFaceBeautySelectedListener:Lcom/transsion/camera/feature/slimbody/adapter/FaceBeautyAdapter$OnItemClickListener;

    .line 370
    invoke-virtual {p1, p3, v0, v2, v1}, Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot;->updateAdapter(Ljava/util/List;Ljava/lang/String;Lcom/transsion/camera/feature/slimbody/adapter/FaceBeautyAdapter$OnItemClickListener;Z)V

    .line 372
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mEntryView:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyEntryView;

    sget p3, Lcom/transsion/camera/feature/slimbody/R$id;->topbar_video_root:I

    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;

    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mTopLayout:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;

    .line 373
    iget-object p3, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mIndicatorClickListener:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$BarClickListener;

    const/4 v0, 0x0

    invoke-virtual {p1, p3, v0, v0, v0}, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->setListener(Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$BarClickListener;Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$SeekBarChangeListener;Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$ContrastListener;Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$SeekBarStatusListener;)V

    .line 374
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mTopLayout:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;

    const/4 p3, 0x1

    invoke-virtual {p1, p3, p3, v1}, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->notifyState(IZZ)V

    .line 375
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mEntryView:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyEntryView;

    sget p3, Lcom/transsion/camera/feature/slimbody/R$id;->face_beauty_bar:I

    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mFaceBeautyIcon:Landroid/widget/ImageView;

    .line 376
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 377
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mEntryView:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyEntryView;

    sget p3, Lcom/transsion/camera/feature/slimbody/R$id;->slimbody_bar:I

    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 378
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->addAnimatorListener()V

    .line 379
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 380
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->updateInteractiveUI()V

    .line 381
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->hideSettingUI()V

    const-string p1, "1"

    .line 382
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->updateFeatureSwitch(Ljava/lang/String;)V

    .line 383
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/ModuleTransferManager;->registerTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    .line 384
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getRingScreenLightState()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->updateRingScreenLight(Z)V

    .line 385
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mEntryView:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyEntryView;

    return-object p0
.end method

.method protected doCreateEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getEntryRootView()Landroid/view/ViewGroup;
    .locals 0

    .line 576
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mEntryRootView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public getEntryView()Landroid/view/View;
    .locals 0

    .line 571
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mEntryView:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyEntryView;

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

    const-string p0, "key_face_beauty"

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

    .line 601
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "key_face_beauty"

    .line 602
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

    .line 398
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->hideEntryView()V

    .line 399
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->hideEntryRootView()V

    .line 400
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->hideSettingUI()V

    return-void
.end method

.method public notifyCameraOperateAction(I)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_12

    if-eq p1, v0, :cond_11

    const/4 v2, 0x2

    if-eq p1, v2, :cond_10

    const/16 v2, 0x9

    if-eq p1, v2, :cond_f

    const/16 v2, 0x13

    const/16 v3, 0x8

    if-eq p1, v2, :cond_d

    const/16 v2, 0x34

    if-eq p1, v2, :cond_c

    const/16 v2, 0x19

    if-eq p1, v2, :cond_d

    const/16 v2, 0x1a

    if-eq p1, v2, :cond_9

    const/16 v2, 0x23

    if-eq p1, v2, :cond_8

    const/16 v2, 0x24

    const/4 v4, 0x0

    if-eq p1, v2, :cond_7

    const/16 v2, 0x38

    if-eq p1, v2, :cond_6

    const/16 v2, 0x39

    if-eq p1, v2, :cond_5

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    goto/16 :goto_1

    .line 466
    :pswitch_0
    iput-boolean v1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mIsFilterSettingShowing:Z

    goto/16 :goto_0

    .line 471
    :pswitch_1
    iput-boolean v1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mIsVideoBeautyIsShowing:Z

    .line 472
    iput-boolean v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mIsFilterSettingShowing:Z

    .line 473
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mFaceBeautyIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    .line 474
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 476
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mBottomRootView:Landroid/view/View;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 479
    :cond_1
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->cancelAnimation()V

    .line 480
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mBottomRootView:Landroid/view/View;

    if-eqz p1, :cond_13

    .line 481
    invoke-virtual {p1, v4}, Landroid/view/View;->setAlpha(F)V

    .line 482
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mBottomRootView:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 483
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mBottomRootView:Landroid/view/View;

    iget p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mTranslateDistance:F

    neg-float p0, p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationY(F)V

    goto/16 :goto_1

    .line 463
    :pswitch_2
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->showEntryRootView()V

    goto/16 :goto_1

    .line 526
    :pswitch_3
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->setEnable(Z)V

    goto/16 :goto_1

    .line 504
    :pswitch_4
    iput-boolean v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mIsRecording:Z

    .line 505
    iput-boolean v1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mIsVideoBeautyIsShowing:Z

    .line 506
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mBottomRootView:Landroid/view/View;

    if-nez p1, :cond_2

    return-void

    .line 507
    :cond_2
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->cancelAnimation()V

    .line 508
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mBottomRootView:Landroid/view/View;

    if-eqz p1, :cond_3

    .line 509
    invoke-virtual {p1, v4}, Landroid/view/View;->setAlpha(F)V

    .line 510
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mBottomRootView:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 511
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mBottomRootView:Landroid/view/View;

    iget v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mTranslateDistance:F

    neg-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 513
    :cond_3
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mShutterPanelRootView:Landroid/view/View;

    if-eqz p1, :cond_4

    .line 514
    invoke-virtual {p1, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 516
    :cond_4
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->hideEntryRootView()V

    goto/16 :goto_1

    .line 500
    :cond_5
    iput-boolean v1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mISFunVideoSettingUIShowing:Z

    goto/16 :goto_1

    .line 493
    :cond_6
    iput-boolean v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mISFunVideoSettingUIShowing:Z

    .line 494
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->hideSettingUI()V

    .line 495
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mSettingOptionControl:Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;

    if-eqz p0, :cond_13

    .line 496
    invoke-interface {p0, v1, v1, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;->sinkUI(ZIZ)V

    goto :goto_1

    .line 531
    :cond_7
    :pswitch_5
    iput-boolean v1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mIsRecording:Z

    .line 532
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->showEntryRootView()V

    .line 533
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mBottomRootView:Landroid/view/View;

    if-eqz p1, :cond_13

    .line 534
    invoke-virtual {p1, v4}, Landroid/view/View;->setAlpha(F)V

    .line 535
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mBottomRootView:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 536
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mBottomRootView:Landroid/view/View;

    iget p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mTranslateDistance:F

    neg-float p0, p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    .line 460
    :cond_8
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->hideEntryRootView()V

    goto :goto_1

    .line 560
    :cond_9
    iget-boolean p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mIsRecording:Z

    if-eqz p1, :cond_a

    goto :goto_1

    .line 561
    :cond_a
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mFaceBeautyIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_b

    .line 562
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 564
    :cond_b
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->showEntryRootView()V

    goto :goto_1

    .line 468
    :cond_c
    :goto_0
    iput-boolean v1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mIsVideoBeautyIsShowing:Z

    goto :goto_1

    .line 551
    :cond_d
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mFaceBeautyIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_e

    .line 552
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 554
    :cond_e
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->hideSettingUI()V

    .line 555
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mSettingOptionControl:Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;

    if-eqz p0, :cond_13

    .line 556
    invoke-interface {p0, v1, v1, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;->sinkUI(ZIZ)V

    goto :goto_1

    .line 543
    :cond_f
    :pswitch_6
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->setEnable(Z)V

    goto :goto_1

    .line 487
    :cond_10
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->hideEntryRootView()V

    .line 488
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mSettingOptionControl:Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;

    if-eqz p0, :cond_13

    .line 489
    invoke-interface {p0, v1, v1, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;->sinkUI(ZIZ)V

    goto :goto_1

    .line 546
    :cond_11
    iput-boolean v1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mCameraSwitching:Z

    .line 547
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->setEnable(Z)V

    goto :goto_1

    .line 520
    :cond_12
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->hideSettingUI()V

    .line 521
    iput-boolean v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mCameraSwitching:Z

    .line 522
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->setEnable(Z)V

    :cond_13
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1c
        :pswitch_3
        :pswitch_6
        :pswitch_6
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2d
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()Z
    .locals 2

    .line 198
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mEntryView:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyEntryView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mBottomRootView:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 204
    :cond_1
    iget-boolean v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mIsVideoBeautyIsShowing:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 207
    :cond_2
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->settingUIAnimShowOrHide()Z

    .line 208
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mSettingOptionControl:Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;

    const/4 v0, 0x1

    if-eqz p0, :cond_3

    .line 209
    invoke-interface {p0, v1, v1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;->sinkUI(ZIZ)V

    :cond_3
    return v0
.end method

.method public restoreInteractiveView()V
    .locals 0

    .line 612
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->hideSettingUI()V

    return-void
.end method

.method public setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V
    .locals 0

    .line 629
    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    return-void
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 0

    .line 608
    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    .line 586
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->setEntryViewEnable(Z)V

    return-void
.end method

.method public bridge synthetic setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .locals 0

    .line 617
    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-void
.end method

.method public setShutterControl(Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;)V
    .locals 0

    .line 622
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->setShutterControl(Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;)V

    .line 623
    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

    return-void
.end method

.method public setupEntryView()V
    .locals 1

    .line 390
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->setupEntryView()V

    const/4 v0, 0x1

    .line 391
    iput-boolean v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mNeedShow:Z

    .line 392
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->setEntryViewEnable(Z)V

    .line 393
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->showEntryRootView()V

    return-void
.end method

.method public unInit()V
    .locals 2

    .line 405
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->unInit()V

    .line 406
    sget-object v0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[unInit]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 407
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->removeAnimatorListener()V

    .line 408
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ModuleTransferManager;->unregisterTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    const/4 v0, 0x0

    .line 409
    iput-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->mEntryView:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyEntryView;

    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .locals 0

    .line 581
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->updateInteractiveUI()V

    return-void
.end method
