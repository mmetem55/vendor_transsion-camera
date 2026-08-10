.class public Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;
.super Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;
.source "FaceBeautySettingUI.java"


# static fields
.field private static final DURATION:I = 0x12c

.field private static final PRECISION:F = 0.01f

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAlphaAnimator:Landroid/animation/ValueAnimator;

.field private final mAlphaInterpolator:Landroid/view/animation/PathInterpolator;

.field private mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mAnimShow:Z

.field private mBottomBarRoot:Landroid/view/View;

.field private mBottomRootView:Landroid/view/View;

.field protected mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

.field private mEntryRootView:Landroid/view/ViewGroup;

.field private mEntryView:Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyEntryView;

.field private mFaceBeautyBottomBarHeight:I

.field private mFaceBeautyLayout:Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLayout;

.field private mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private final mFadeOutInterpolator:Landroid/view/animation/PathInterpolator;

.field private mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

.field private mIndicatorClickListener:Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyTopLayout$BarClickListener;

.field private mInteractive:Lcom/transsion/camera/app/common/interactive/CommonInteractive;

.field private mModeArrowRoot:Landroid/view/View;

.field private mNeedShow:Z

.field private final mPathInterpolator:Landroid/view/animation/PathInterpolator;

.field private mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

.field private mTopLayout:Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyTopLayout;

.field private mTopRootView:Landroid/view/View;

.field private mTranslateAnimator2:Landroid/animation/ValueAnimator;

.field private mTranslateDistance:F

.field private mTranslateDistance2:F

.field private mTranslateUpdateListener2:Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# direct methods
.method public static synthetic $r8$lambda$L0B5996eXH7igzcgfUU7Tq0RGAo(Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->lambda$new$0(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 5

    .line 227
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    .line 165
    new-instance v0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI$1;-><init>(Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mIndicatorClickListener:Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyTopLayout$BarClickListener;

    .line 252
    new-instance v0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI$2;-><init>(Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mTranslateUpdateListener2:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 264
    new-instance v0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI$3;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI$3;-><init>(Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 478
    new-instance v0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    const v0, 0x7f0701e0

    .line 229
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mFaceBeautyBottomBarHeight:I

    const v0, 0x7f0701e4

    .line 230
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mTranslateDistance:F

    const v0, 0x7f0701e5

    .line 231
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mTranslateDistance2:F

    .line 232
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const/high16 v0, 0x3e800000    # 0.25f

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p1, v0, v1, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 233
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const v0, 0x3ea8f5c3    # 0.33f

    const v3, 0x3f28f5c3    # 0.66f

    invoke-direct {p1, v0, v1, v3, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    .line 234
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const v0, 0x3ecccccd    # 0.4f

    const v3, 0x3dcccccd    # 0.1f

    invoke-direct {p1, v0, v1, v3, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mFadeOutInterpolator:Landroid/view/animation/PathInterpolator;

    const/4 p1, 0x2

    new-array v0, p1, [F

    .line 235
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x12c

    .line 236
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-array p1, p1, [F

    .line 238
    iget v0, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mTranslateDistance2:F

    neg-float v0, v0

    const/4 v4, 0x0

    aput v0, p1, v4

    const/4 v0, 0x1

    aput v1, p1, v0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mTranslateAnimator2:Landroid/animation/ValueAnimator;

    .line 239
    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$000(Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->clickFaceBeautyBar()V

    return-void
.end method

.method static synthetic access$100()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 24
    sget-object v0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$200(Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;)Landroid/view/View;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mBottomRootView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;FF)Z
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->isFloatEqual(FF)Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->computeFilterRootVisibility()V

    return-void
.end method

.method private addAnimatorListener()V
    .locals 2

    .line 243
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 244
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mTranslateAnimator2:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 248
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mTranslateUpdateListener2:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_1
    return-void
.end method

.method private alphaAnim()V
    .locals 6

    const/4 v0, 0x1

    .line 198
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->setAnimState(Z)V

    .line 199
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mBottomRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v3, v1, v2

    const/4 v4, 0x0

    if-gtz v3, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    move v3, v4

    .line 200
    :goto_0
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mAnimShow:Z

    if-eqz v3, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 202
    :cond_1
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    const/4 v5, 0x2

    new-array v5, v5, [F

    aput v1, v5, v4

    aput v2, v5, v0

    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 203
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mAnimShow:Z

    if-eqz v0, :cond_2

    .line 204
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 205
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_1

    .line 207
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 208
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mFadeOutInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 210
    :goto_1
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private cancelAnimation()V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mTranslateAnimator2:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mTranslateAnimator2:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    const/4 v0, 0x0

    .line 101
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->setAnimState(Z)V

    return-void
.end method

.method private clickFaceBeautyBar()V
    .locals 2

    .line 173
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mBottomRootView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mFaceBeautyLayout:Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 177
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->alphaAnim()V

    .line 178
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->translateAnim()V

    .line 179
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->shutterControlAnim()V

    :cond_1
    :goto_0
    return-void
.end method

.method private computeFilterRootVisibility()V
    .locals 3

    .line 279
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mBottomRootView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 280
    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mAnimShow:Z

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    .line 281
    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 283
    :cond_1
    invoke-direct {p0, v1}, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->setAnimState(Z)V

    return-void
.end method

.method private hideEntryRootView()V
    .locals 2

    .line 349
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mEntryView:Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyEntryView;

    if-eqz v0, :cond_1

    .line 350
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

    .line 352
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mNeedShow:Z

    .line 353
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mEntryView:Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyEntryView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private hideSettingUI()V
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mBottomRootView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 123
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->cancelAnimation()V

    .line 124
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mBottomRootView:Landroid/view/View;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 125
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 126
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mBottomRootView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 127
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mBottomRootView:Landroid/view/View;

    iget v1, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mTranslateDistance2:F

    neg-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 131
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, v1, v1, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;->sinkUI(ZIZ)V

    .line 132
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->transitionShutterToRegular()V

    .line 134
    :cond_2
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mModeArrowRoot:Landroid/view/View;

    if-eqz p0, :cond_3

    .line 135
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method private isFloatEqual(FF)Z
    .locals 0

    sub-float/2addr p1, p2

    .line 288
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
    .locals 0

    .line 478
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->updateRingScreenLight(Z)V

    return-void
.end method

.method private removeAnimatorListener()V
    .locals 2

    .line 360
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 361
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 363
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mTranslateAnimator2:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 364
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mTranslateUpdateListener2:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_1
    return-void
.end method

.method private setAnimState(Z)V
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mEntryView:Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyEntryView;

    if-eqz p0, :cond_0

    .line 106
    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyEntryView;->setAnimState(Z)V

    :cond_0
    return-void
.end method

.method private setEntryViewEnable(Z)V
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mEntryView:Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyEntryView;

    if-eqz p0, :cond_0

    .line 89
    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyEntryView;->setEnable(Z)V

    :cond_0
    return-void
.end method

.method private showEntryRootView()V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mEntryView:Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyEntryView;

    if-eqz v0, :cond_0

    .line 112
    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mNeedShow:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 113
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mNeedShow:Z

    .line 114
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private shutterControlAnim()V
    .locals 3

    .line 183
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 184
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mAnimShow:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, v2, v1, v2}, Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;->sinkUI(ZIZ)V

    .line 186
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->transitionShutterToSmall()V

    goto :goto_0

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, v1, v1, v2}, Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;->sinkUI(ZIZ)V

    .line 189
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->transitionShutterToRegular()V

    .line 192
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mModeArrowRoot:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 193
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mAnimShow:Z

    if-eqz p0, :cond_2

    const/4 v1, 0x4

    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method private translateAnim()V
    .locals 5

    .line 214
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mAnimShow:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mTranslateDistance2:F

    neg-float v0, v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    cmpg-float v2, v0, v1

    if-gez v2, :cond_1

    goto :goto_1

    .line 215
    :cond_1
    iget v1, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mTranslateDistance2:F

    neg-float v1, v1

    .line 216
    :goto_1
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mTranslateAnimator2:Landroid/animation/ValueAnimator;

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v0, v3, v4

    const/4 v0, 0x1

    aput v1, v3, v0

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 217
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mAnimShow:Z

    if-eqz v0, :cond_2

    .line 218
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mTranslateAnimator2:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 219
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mTranslateAnimator2:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_2

    .line 221
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mTranslateAnimator2:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 222
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mTranslateAnimator2:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mFadeOutInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 224
    :goto_2
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mTranslateAnimator2:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private updateInteractiveUI()V
    .locals 6

    .line 142
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result v0

    .line 143
    iget v1, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mFaceBeautyBottomBarHeight:I

    sub-int v1, v0, v1

    .line 144
    sget-object v2, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

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

    .line 146
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mBottomRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingStart()I

    move-result v2

    .line 147
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mBottomRootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingEnd()I

    move-result v3

    .line 148
    iget-object v4, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mBottomRootView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    .line 149
    iget-object v5, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mBottomBarRoot:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    if-le v1, v5, :cond_0

    .line 151
    iget-object v5, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mBottomRootView:Landroid/view/View;

    invoke-virtual {v5, v2, v4, v3, v1}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    if-lez v0, :cond_1

    .line 155
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mTopRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    .line 156
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mTopRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingEnd()I

    move-result v2

    .line 157
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mTopRootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    .line 158
    iget-object v4, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mTopRootView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    if-le v0, v4, :cond_1

    .line 160
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mTopRootView:Landroid/view/View;

    invoke-virtual {p0, v1, v3, v2, v0}, Landroid/view/View;->setPadding(IIII)V

    :cond_1
    return-void
.end method

.method private updateRingScreenLight(Z)V
    .locals 0

    .line 481
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mFaceBeautyLayout:Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLayout;

    if-eqz p0, :cond_0

    .line 482
    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLayout;->notifyListDataChange(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/interactive/CommonInteractive;)Landroid/view/View;
    .locals 2

    .line 56
    sget-object v0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "init createEntryView"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 57
    invoke-virtual {p3}, Lcom/transsion/camera/app/common/interactive/CommonInteractive;->getIAppUI()Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 58
    iput-object p2, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mEntryRootView:Landroid/view/ViewGroup;

    .line 59
    iput-object p3, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mInteractive:Lcom/transsion/camera/app/common/interactive/CommonInteractive;

    const p3, 0x7f0c007e

    const/4 v0, 0x0

    .line 60
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyEntryView;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mEntryView:Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyEntryView;

    .line 61
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mInteractive:Lcom/transsion/camera/app/common/interactive/CommonInteractive;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/interactive/CommonInteractive;->getShutterPanelRootView()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mBottomBarRoot:Landroid/view/View;

    .line 62
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mInteractive:Lcom/transsion/camera/app/common/interactive/CommonInteractive;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/interactive/CommonInteractive;->getModeArrowRoot()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mModeArrowRoot:Landroid/view/View;

    .line 63
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mEntryView:Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyEntryView;

    const p2, 0x7f09018a

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mBottomRootView:Landroid/view/View;

    const/4 p2, 0x0

    .line 64
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 65
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mBottomRootView:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 66
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mBottomRootView:Landroid/view/View;

    iget p2, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mTranslateDistance:F

    neg-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 67
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mEntryView:Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyEntryView;

    const p2, 0x7f09018d

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mTopRootView:Landroid/view/View;

    .line 68
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mEntryView:Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyEntryView;

    const p2, 0x7f090186

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLayout;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mFaceBeautyLayout:Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLayout;

    .line 69
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getRingScreenLightState()Z

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLayout;->setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;Z)V

    .line 70
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mEntryView:Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyEntryView;

    const p2, 0x7f09018e

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyTopLayout;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mTopLayout:Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyTopLayout;

    .line 71
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mIndicatorClickListener:Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyTopLayout$BarClickListener;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyTopLayout;->setListener(Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyTopLayout$BarClickListener;)V

    .line 72
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->updateInteractiveUI()V

    .line 73
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->addAnimatorListener()V

    .line 74
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/ModuleTransferManager;->registerTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    .line 75
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mEntryView:Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyEntryView;

    return-object p0
.end method

.method protected doCreateEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getEntryRootView()Landroid/view/ViewGroup;
    .locals 0

    .line 427
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mEntryRootView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public getEntryView()Landroid/view/View;
    .locals 0

    .line 422
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mEntryView:Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyEntryView;

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

.method public getValue()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public hideEntryView()V
    .locals 0

    .line 375
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->hideEntryView()V

    .line 376
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->hideEntryRootView()V

    .line 377
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->hideSettingUI()V

    return-void
.end method

.method public notifyCameraOperateAction(I)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    const/16 v1, 0x8

    const/4 v2, 0x1

    if-eq p1, v2, :cond_6

    const/4 v3, 0x2

    if-eq p1, v3, :cond_5

    const/16 v3, 0x9

    if-eq p1, v3, :cond_6

    const/16 v3, 0x38

    if-eq p1, v3, :cond_4

    const/16 v3, 0x19

    if-eq p1, v3, :cond_3

    const/16 v3, 0x1a

    if-eq p1, v3, :cond_2

    const/16 v3, 0x23

    if-eq p1, v3, :cond_1

    const/16 v3, 0x24

    if-eq p1, v3, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    goto :goto_0

    .line 305
    :pswitch_0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->hideSettingUI()V

    goto :goto_0

    .line 315
    :pswitch_1
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->hideSettingUI()V

    .line 316
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->hideEntryRootView()V

    goto :goto_0

    .line 302
    :pswitch_2
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->showEntryRootView()V

    goto :goto_0

    .line 327
    :cond_0
    :pswitch_3
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->showEntryRootView()V

    goto :goto_0

    .line 299
    :cond_1
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->hideEntryRootView()V

    goto :goto_0

    .line 343
    :cond_2
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mTopLayout:Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyTopLayout;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 340
    :cond_3
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mTopLayout:Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyTopLayout;

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 312
    :cond_4
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->hideSettingUI()V

    goto :goto_0

    .line 309
    :cond_5
    :pswitch_4
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->hideEntryRootView()V

    goto :goto_0

    .line 334
    :cond_6
    :pswitch_5
    invoke-virtual {p0, v2}, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->setEnable(Z)V

    .line 335
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mTopLayout:Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyTopLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    if-ne p1, v1, :cond_8

    .line 336
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mTopLayout:Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyTopLayout;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 322
    :cond_7
    :pswitch_6
    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->setEnable(Z)V

    :cond_8
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1c
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2d
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()Z
    .locals 2

    .line 392
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mBottomRootView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 396
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mEntryView:Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyEntryView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 400
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mBottomRootView:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 404
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mFaceBeautyLayout:Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLayout;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 405
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->alphaAnim()V

    .line 406
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->translateAnim()V

    .line 407
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->shutterControlAnim()V

    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    return v1
.end method

.method public restoreInteractiveView()V
    .locals 0

    .line 437
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->hideSettingUI()V

    return-void
.end method

.method public setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V
    .locals 0

    .line 475
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    return-void
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 2

    if-nez p1, :cond_0

    .line 454
    sget-object p1, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDeviceSettingData is null,key = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 458
    :cond_0
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    .line 432
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->setEntryViewEnable(Z)V

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

.method public setShutterControl(Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;)V
    .locals 0

    .line 468
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->setShutterControl(Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;)V

    .line 469
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

    return-void
.end method

.method public setupEntryView()V
    .locals 1

    .line 80
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->setupEntryView()V

    .line 81
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->hideSettingUI()V

    const/4 v0, 0x1

    .line 82
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mNeedShow:Z

    .line 83
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->setEntryViewEnable(Z)V

    .line 84
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->showEntryRootView()V

    return-void
.end method

.method public unInit()V
    .locals 2

    .line 382
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->unInit()V

    .line 383
    sget-object v0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "unInit createEntryView"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 384
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->removeAnimatorListener()V

    .line 385
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ModuleTransferManager;->unregisterTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    const/4 v0, 0x0

    .line 386
    iput-object v0, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->mEntryView:Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyEntryView;

    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method
