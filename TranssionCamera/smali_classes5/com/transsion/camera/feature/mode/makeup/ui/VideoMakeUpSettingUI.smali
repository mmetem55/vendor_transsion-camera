.class public Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;
.super Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;
.source "VideoMakeUpSettingUI.java"


# static fields
.field private static final DURATION:I = 0x12c

.field private static final PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private static final PRECISION:F = 0.01f

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mAlphaAnimator:Landroid/animation/ValueAnimator;

.field private final mAlphaPathInterpolator:Landroid/view/animation/PathInterpolator;

.field private final mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mAnimShow:Z

.field private final mBarClickListener:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$BarClickListener;

.field private mBottomContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

.field private final mBottomUIDefaultHeight:I

.field private final mContrastListener:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$ContrastListener;

.field private mCurrentUIType:I

.field private final mDisappearAnimatorEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private mDstBottomMargin:I

.field private mEntryRootView:Landroid/view/ViewGroup;

.field private mEntryView:Landroid/view/View;

.field private final mExpandTranslateDistance:F

.field private final mFadeoutInterpolator:Landroid/view/animation/PathInterpolator;

.field private mHoverAnimator:Landroid/animation/ValueAnimator;

.field private mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private mMakeUpBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpBottomUI;

.field private mMakeUpOptionSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private mMakeUpRoot:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;

.field private mMakeUpStyleSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private mMakeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;

.field private mNeedShow:Z

.field private final mPathInterpolator:Landroid/view/animation/PathInterpolator;

.field private mRecording:Z

.field private final mSeekBarChangeListener:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$SeekBarChangeListener;

.field private mSeekBarContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

.field private final mSeekBarStatusListener:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$SeekBarStatusListener;

.field private final mSettingDataCallback:Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

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

.field private final mTranInInterpolator:Landroid/view/animation/PathInterpolator;

.field private final mTranOutInterpolator:Landroid/view/animation/PathInterpolator;

.field private final mTranslateAnimator:Landroid/animation/ValueAnimator;

.field private final mTranslateDistance:F

.field private final mTranslateUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

.field private mZoomWheelShowing:Z

.field private translateForBottomUI:Landroid/animation/ObjectAnimator;

.field private translateForSeekBar:Landroid/animation/ObjectAnimator;


# direct methods
.method public static synthetic $r8$lambda$D7mJ3VXnMTlB-5z_u0Ig59S8j90(Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;Ljava/lang/Object;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->lambda$new$1(Ljava/lang/Object;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$hdecAFa09TC9cA8O3gb6bZnQd5o(Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->notifyConflictUI(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$l7p9FHLFF40abPqH8Tfm2utiX-o(Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->lambda$new$0(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$oxPFfnd51-q4e_poKK1vPMgTcZY(Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->resetUI()V

    return-void
.end method

.method public static synthetic $r8$lambda$tyTyJsT4Z4Zfl-eiC6kYsmBL5qw(Landroid/widget/FrameLayout$LayoutParams;Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->lambda$updateSettingUILayout$2(Landroid/widget/FrameLayout$LayoutParams;Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 51
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 60
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3e800000    # 0.25f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 6

    .line 289
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;-><init>()V

    .line 91
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI$1;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 102
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI$2;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mTranslateUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 128
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI$3;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI$3;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mDisappearAnimatorEndListener:Landroid/animation/AnimatorListenerAdapter;

    .line 148
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mBarClickListener:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$BarClickListener;

    .line 153
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI$4;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI$4;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mSeekBarChangeListener:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$SeekBarChangeListener;

    .line 163
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI$5;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI$5;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mContrastListener:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$ContrastListener;

    .line 180
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mSeekBarStatusListener:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$SeekBarStatusListener;

    .line 339
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI$6;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI$6;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 481
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mSettingDataCallback:Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    .line 290
    sget v0, Lcom/transsion/camera/feature/makeup/R$dimen;->bottom_ui_translate_anim_distance:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mTranslateDistance:F

    .line 291
    sget v1, Lcom/transsion/camera/feature/makeup/R$dimen;->bottom_ui_expand_translate_anim_distance:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mExpandTranslateDistance:F

    .line 292
    sget v1, Lcom/transsion/camera/feature/makeup/R$dimen;->sink_shutter_translate_distance:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mSinkTranslateDistance:I

    .line 293
    sget v1, Lcom/transsion/camera/feature/makeup/R$dimen;->mu_big_item_margin_bottom:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mBottomUIDefaultHeight:I

    .line 294
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3e800000    # 0.25f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {p1, v1, v2, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 295
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const v4, 0x3ea8f5c3    # 0.33f

    const v5, 0x3f28f5c3    # 0.66f

    invoke-direct {p1, v4, v2, v5, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mAlphaPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 296
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const v4, 0x3ecccccd    # 0.4f

    const v5, 0x3dcccccd    # 0.1f

    invoke-direct {p1, v4, v2, v5, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mFadeoutInterpolator:Landroid/view/animation/PathInterpolator;

    .line 297
    new-instance p1, Landroid/view/animation/PathInterpolator;

    invoke-direct {p1, v1, v2, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mTranInInterpolator:Landroid/view/animation/PathInterpolator;

    .line 298
    new-instance p1, Landroid/view/animation/PathInterpolator;

    invoke-direct {p1, v4, v2, v3, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mTranOutInterpolator:Landroid/view/animation/PathInterpolator;

    const/4 p1, 0x2

    new-array v1, p1, [F

    .line 299
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0x12c

    .line 300
    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-array p1, p1, [F

    const/4 v1, 0x0

    aput v2, p1, v1

    const/4 v1, 0x1

    aput v0, p1, v1

    .line 301
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    .line 302
    invoke-virtual {p1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;)Lcom/transsion/camera/app/ui/widget/RotateLayout;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mBottomContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;)Z
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->isExpandedState()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;)I
    .locals 0

    .line 49
    iget p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    return p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;)Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpBottomUI;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mMakeUpBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpBottomUI;

    return-object p0
.end method

.method static synthetic access$400()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 49
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method private addAnimatorListener()V
    .locals 2

    .line 219
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 220
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mTranslateUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method private cancelAnimation()V
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 310
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    return-void
.end method

.method private getMakeUpTranslateDistance()F
    .locals 2

    .line 710
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->isExpandedState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 711
    iget p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mTranslateDistance:F

    :goto_0
    neg-float p0, p0

    return p0

    .line 714
    :cond_0
    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    if-eqz v0, :cond_2

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_1

    goto :goto_1

    .line 717
    :cond_1
    iget p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mExpandTranslateDistance:F

    return p0

    .line 715
    :cond_2
    :goto_1
    iget p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mExpandTranslateDistance:F

    goto :goto_0
.end method

.method private hideEntryRootView()V
    .locals 2

    .line 408
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mEntryView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 409
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

    .line 411
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mNeedShow:Z

    .line 412
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mEntryView:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private hideSettingUI(Z)V
    .locals 2

    .line 315
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "hideSettingUI"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 316
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mBottomContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 317
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    return-void

    .line 320
    :cond_2
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->cancelAnimation()V

    .line 321
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mBottomContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    .line 322
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 323
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mBottomContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 324
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mBottomContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iget v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mTranslateDistance:F

    neg-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 326
    :cond_3
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p1, :cond_4

    const/4 v0, 0x0

    .line 327
    invoke-interface {p1, v0, v0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;->sinkUI(ZIZ)V

    .line 328
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->notifyConflictUI(Z)V

    :cond_4
    return-void
.end method

.method private isExpandedState()Z
    .locals 1

    .line 722
    iget p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic lambda$new$0(I)V
    .locals 1

    const/4 v0, 0x0

    .line 149
    sput-boolean v0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->isPressBack:Z

    .line 150
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->settingUIAnimShowOrHide(I)Z

    return-void
.end method

.method private synthetic lambda$new$1(Ljava/lang/Object;I)V
    .locals 0

    const/16 p1, 0x64

    if-ne p2, p1, :cond_1

    .line 483
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    if-ne p1, p2, :cond_0

    .line 484
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->resetUI()V

    goto :goto_0

    .line 485
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mEntryView:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 486
    new-instance p2, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private static synthetic lambda$updateSettingUILayout$2(Landroid/widget/FrameLayout$LayoutParams;Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 689
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 690
    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private notifyConflictUI(Z)V
    .locals 1

    .line 334
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_conflict_ui_state"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    if-eqz p1, :cond_0

    const-string p1, "value_facebeauty_ui_on"

    goto :goto_0

    :cond_0
    const-string p1, "value_facebeauty_ui_off"

    .line 335
    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private removeAnimatorListener()V
    .locals 2

    .line 224
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 225
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mTranslateUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method private resetUI()V
    .locals 2

    const/4 v0, 0x1

    .line 492
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->hideSettingUI(Z)V

    .line 493
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->showEntryRootView()V

    .line 494
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mMakeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 495
    invoke-virtual {v0, v1, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->notifyState(IZ)V

    .line 497
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mMakeUpBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpBottomUI;

    if-eqz p0, :cond_1

    .line 498
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpBottomUI;->resetUI()V

    :cond_1
    return-void
.end method

.method private settingUIAnimShowOrHide(I)Z
    .locals 7

    .line 269
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mBottomContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mMakeUpBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpBottomUI;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpBottomUI;->updateFeatureRv(I)V

    .line 275
    iget v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mCurrentUIType:I

    if-ne v0, p1, :cond_1

    :goto_0
    move v1, v2

    goto :goto_1

    .line 278
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mBottomContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v0

    float-to-double v3, v0

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v3, v5

    if-eqz v0, :cond_2

    goto :goto_0

    .line 283
    :cond_2
    :goto_1
    iput p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mCurrentUIType:I

    .line 285
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->showOrHide(Z)V

    return v2

    .line 270
    :cond_3
    :goto_2
    sput-boolean v2, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->isPressBack:Z

    return v1
.end method

.method private showEntryRootView()V
    .locals 2

    .line 450
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mEntryView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 451
    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mNeedShow:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 452
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mNeedShow:Z

    .line 453
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private showOrHide(Z)V
    .locals 7

    if-eqz p1, :cond_6

    .line 230
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mBottomContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getAlpha()F

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

    .line 231
    :goto_0
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mAnimShow:Z

    if-eqz v1, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_1
    move v1, v0

    .line 233
    :goto_1
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    const/4 v5, 0x2

    new-array v6, v5, [F

    aput p1, v6, v3

    aput v1, v6, v2

    invoke-virtual {v4, v6}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 234
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mAnimShow:Z

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->getMakeUpTranslateDistance()F

    move-result p1

    goto :goto_2

    :cond_2
    move p1, v0

    .line 235
    :goto_2
    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mAnimShow:Z

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->getMakeUpTranslateDistance()F

    move-result v0

    .line 236
    :goto_3
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mDisappearAnimatorEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 237
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    new-array v4, v5, [F

    aput p1, v4, v3

    aput v0, v4, v2

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 238
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mAnimShow:Z

    if-eqz p1, :cond_4

    .line 239
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x64

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 240
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 241
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mAlphaPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 242
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_4

    .line 244
    :cond_4
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mDisappearAnimatorEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 245
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 246
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 247
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mFadeoutInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 248
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mFadeoutInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 250
    :goto_4
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 251
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 252
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p1, :cond_6

    .line 253
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mAnimShow:Z

    if-eqz v0, :cond_5

    .line 254
    iget v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mSinkTranslateDistance:I

    invoke-interface {p1, v2, v0, v2}, Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;->sinkUI(ZIZ)V

    .line 255
    invoke-direct {p0, v2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->notifyConflictUI(Z)V

    goto :goto_5

    .line 258
    :cond_5
    invoke-interface {p1, v3, v3, v2}, Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;->sinkUI(ZIZ)V

    .line 259
    invoke-direct {p0, v3}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->notifyConflictUI(Z)V

    .line 261
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mMakeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;

    invoke-virtual {p0, v3, v3}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->notifyState(IZ)V

    :cond_6
    :goto_5
    return-void
.end method

.method private videoMakeUpOn(Ljava/lang/String;)Z
    .locals 0

    .line 206
    invoke-static {p1}, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->toObject(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 207
    iget p0, p0, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->styleNumber:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/interactive/CommonInteractive;)Landroid/view/View;
    .locals 2

    .line 358
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "createEntryView"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 359
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mEntryRootView:Landroid/view/ViewGroup;

    .line 360
    sget v0, Lcom/transsion/camera/feature/makeup/R$layout;->makeup_video_main_layout:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mEntryView:Landroid/view/View;

    .line 361
    sget p2, Lcom/transsion/camera/feature/makeup/R$id;->top_ui:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mMakeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;

    .line 362
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mEntryView:Landroid/view/View;

    sget p2, Lcom/transsion/camera/feature/makeup/R$id;->makeup_bottom_container:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mBottomContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 363
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mEntryView:Landroid/view/View;

    sget p2, Lcom/transsion/camera/feature/makeup/R$id;->makeup_top_seekbar_container:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mSeekBarContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 364
    invoke-virtual {p3}, Lcom/transsion/camera/app/common/interactive/CommonInteractive;->getIAppUI()Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 365
    invoke-virtual {p3}, Lcom/transsion/camera/app/common/interactive/CommonInteractive;->getAppUIRect()Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    .line 366
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mMakeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->setAppUI(Lcom/transsion/camera/app/common/IAppUI;)V

    .line 367
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mMakeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mBarClickListener:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$BarClickListener;

    iget-object p3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mSeekBarChangeListener:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$SeekBarChangeListener;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mContrastListener:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$ContrastListener;

    const/4 v1, 0x0

    invoke-virtual {p1, p2, p3, v0, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->setListener(Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$BarClickListener;Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$SeekBarChangeListener;Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$ContrastListener;Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$SeekBarStatusListener;)V

    .line 368
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mEntryView:Landroid/view/View;

    sget p2, Lcom/transsion/camera/feature/makeup/R$id;->bottom_ui:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpBottomUI;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mMakeUpBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpBottomUI;

    .line 369
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mEntryView:Landroid/view/View;

    sget p2, Lcom/transsion/camera/feature/makeup/R$id;->makeup_root:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mMakeUpRoot:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;

    .line 371
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mMakeUpBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpBottomUI;

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mMakeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;

    invoke-virtual {p1, p2, p3}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpBottomUI;->setUIInterface(Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;)V

    .line 372
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string p3, "key_video_makeup_style"

    invoke-virtual {p1, p3, p2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 373
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->addAnimatorListener()V

    .line 374
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mEntryView:Landroid/view/View;

    return-object p0
.end method

.method protected doCreateEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getEntryRootView()Landroid/view/ViewGroup;
    .locals 0

    .line 384
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mEntryRootView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public getEntryView()Landroid/view/View;
    .locals 0

    .line 379
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mEntryView:Landroid/view/View;

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

    const-string p0, "key_video_makeup_style"

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

    .line 470
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "key_video_makeup"

    .line 471
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "key_video_makeup_style"

    .line 472
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public hideEntryView()V
    .locals 1

    .line 432
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->hideEntryView()V

    const/4 v0, 0x0

    .line 433
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->hideSettingUI(Z)V

    .line 434
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->hideEntryRootView()V

    return-void
.end method

.method public needShowOptionBar()Z
    .locals 1

    .line 212
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mMakeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 215
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->currentState()I

    move-result p0

    if-nez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
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

    const/16 v2, 0x1f

    if-eq p1, v2, :cond_2

    const/16 v2, 0x36

    if-eq p1, v2, :cond_5

    const/16 v2, 0x37

    if-eq p1, v2, :cond_4

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto :goto_0

    .line 587
    :pswitch_0
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mMakeUpRoot:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->hideDialog()V

    .line 588
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mRecording:Z

    .line 589
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->setEnable(Z)V

    goto :goto_0

    .line 574
    :pswitch_1
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mRecording:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mZoomWheelShowing:Z

    if-eqz p1, :cond_0

    .line 575
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->hideSettingUI(Z)V

    .line 576
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->showEntryRootView()V

    .line 577
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mMakeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;

    if-eqz p1, :cond_0

    .line 578
    invoke-virtual {p1, v0, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->notifyState(IZ)V

    .line 581
    :cond_0
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mZoomWheelShowing:Z

    goto :goto_0

    .line 569
    :pswitch_2
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mZoomWheelShowing:Z

    .line 570
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->hideSettingUI(Z)V

    .line 571
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->hideEntryRootView()V

    goto :goto_0

    .line 560
    :pswitch_3
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mRecording:Z

    .line 561
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->setEnable(Z)V

    .line 562
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->hideSettingUI(Z)V

    .line 563
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->showEntryRootView()V

    .line 564
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mMakeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;

    if-eqz p0, :cond_6

    .line 565
    invoke-virtual {p0, v0, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->notifyState(IZ)V

    goto :goto_0

    .line 551
    :pswitch_4
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mRecording:Z

    .line 552
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mMakeUpRoot:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;

    if-eqz p1, :cond_1

    .line 553
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->hideDialog()V

    .line 555
    :cond_1
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->setEnable(Z)V

    .line 556
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->hideSettingUI(Z)V

    .line 557
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->hideEntryRootView()V

    goto :goto_0

    .line 547
    :cond_2
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->setEnable(Z)V

    .line 548
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->showEntryRootView()V

    goto :goto_0

    .line 584
    :cond_3
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->hideEntryRootView()V

    goto :goto_0

    .line 600
    :cond_4
    :pswitch_5
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mRecording:Z

    .line 601
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->setEnable(Z)V

    goto :goto_0

    .line 594
    :cond_5
    :pswitch_6
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->setEnable(Z)V

    :cond_6
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x19
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()Z
    .locals 3

    .line 527
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mEntryView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 530
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mMakeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 534
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mMakeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mBottomContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_2

    .line 535
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mMakeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->onBackPressed()Z

    move-result v1

    :cond_2
    if-eqz v1, :cond_3

    const/4 v0, 0x1

    .line 538
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->showOrHide(Z)V

    :cond_3
    return v1
.end method

.method public onOrientationChanged(I)V
    .locals 0

    .line 608
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onOrientationChanged(I)V

    .line 609
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->isExpandedState()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 610
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->updateSettingUILayout(Z)V

    :cond_0
    return-void
.end method

.method public onSettingOptionToggle(Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    .line 185
    sput-boolean v0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->isPressBack:Z

    .line 186
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mBottomContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    const/4 v2, 0x1

    if-gtz v1, :cond_0

    move v0, v2

    .line 188
    :cond_0
    sget-object v1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSettingOptionToggle sourceKey: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", isCollapse: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string v1, "key_video_makeup"

    .line 189
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 190
    invoke-direct {p0, v2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->settingUIAnimShowOrHide(I)Z

    .line 191
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mMakeUpOptionSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mMakeUpStyleSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p1, :cond_2

    .line 192
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p1

    .line 193
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mMakeUpOptionSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "off"

    .line 194
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->videoMakeUpOn(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 195
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mMakeUpOptionSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string p1, "on"

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    .line 200
    invoke-direct {p0, v2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->settingUIAnimShowOrHide(I)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 0

    return-void
.end method

.method public setDeviceSettingData(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;",
            ">;)V"
        }
    .end annotation

    .line 504
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->setDeviceSettingData(Ljava/util/List;)V

    .line 505
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mSettingDataList:Ljava/util/List;

    if-eqz p1, :cond_2

    .line 507
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;

    .line 508
    iget-object v1, v0, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->key:Ljava/lang/String;

    const-string v2, "key_video_makeup_style"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 509
    iget-object v0, v0, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->iSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mMakeUpStyleSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    goto :goto_0

    .line 510
    :cond_1
    iget-object v1, v0, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->key:Ljava/lang/String;

    const-string v2, "key_video_makeup"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 511
    iget-object v0, v0, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->iSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mMakeUpOptionSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v0, :cond_0

    .line 513
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mSettingDataCallback:Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setEnable(Z)V
    .locals 1

    .line 399
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mMakeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;

    if-eqz v0, :cond_0

    .line 400
    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->setEnabled(Z)V

    .line 402
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mMakeUpBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpBottomUI;

    if-eqz p0, :cond_1

    .line 403
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpBottomUI;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method public bridge synthetic setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .locals 0

    .line 522
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-void
.end method

.method public setupEntryView()V
    .locals 3

    .line 419
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->setupEntryView()V

    const/4 v0, 0x0

    .line 420
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mRecording:Z

    .line 421
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mZoomWheelShowing:Z

    .line 422
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->hideSettingUI(Z)V

    .line 423
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->showEntryRootView()V

    .line 424
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mMakeUpBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpBottomUI;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mSettingDataList:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpBottomUI;->registerSettingData(Ljava/util/List;)V

    .line 425
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mMakeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;

    if-eqz p0, :cond_0

    .line 426
    invoke-virtual {p0, v0, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->notifyState(IZ)V

    :cond_0
    return-void
.end method

.method public unInit()V
    .locals 3

    .line 439
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->unInit()V

    .line 440
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "unInit"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 441
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mMakeUpBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpBottomUI;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpBottomUI;->unregisterSettingData()V

    .line 442
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v2, "key_video_makeup_style"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 443
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->removeAnimatorListener()V

    const/4 v0, 0x0

    .line 444
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mMakeUpBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpBottomUI;

    .line 445
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mMakeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;

    .line 446
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mEntryView:Landroid/view/View;

    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method

.method protected updateSettingUILayout(Z)V
    .locals 11

    .line 616
    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    .line 617
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v1}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    .line 618
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->getEntryView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 623
    :cond_0
    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getBottomBarHeight()I

    move-result v2

    .line 624
    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result v3

    .line 625
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mMakeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;

    iget v5, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    iget v6, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    invoke-virtual {v4, v5, v6}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->updateProgressText(II)V

    .line 626
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 627
    iget-object v5, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mSeekBarContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v6, 0x1

    .line 628
    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 629
    iget v7, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 631
    iget v8, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_1

    .line 632
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v8, "hover_support_setting_ui_bottom_margin"

    invoke-static {v3, v8}, Lcom/transsion/camera/utils/CameraUtil;->getDimen(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 635
    :cond_1
    iget v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mBottomUIDefaultHeight:I

    sub-int v2, v3, v2

    .line 637
    :goto_0
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mBottomContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 638
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mBottomContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 639
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mSeekBarContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 640
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mSeekBarContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 642
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mBottomContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v8, 0x0

    .line 643
    invoke-virtual {v3, v8, v8, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 645
    iget-object v9, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mMakeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;

    iget v10, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    invoke-virtual {v9, v10, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->updateLayout(II)V

    .line 646
    iget-object v9, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mMakeUpBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpBottomUI;

    iget v10, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    invoke-virtual {v9, v10, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpBottomUI;->updateLayout(II)V

    .line 647
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->isExpandedState()Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 p1, 0x5a

    const/16 v2, 0x10e

    if-eq v0, p1, :cond_4

    const/16 p1, 0xb4

    if-eq v0, p1, :cond_3

    if-eq v0, v2, :cond_2

    const/16 p1, 0x53

    .line 670
    iput p1, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 671
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mBottomContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v5, Lcom/transsion/camera/feature/makeup/R$dimen;->makeup_bottom_0_expand_left_margin:I

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 672
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mBottomContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v5, Lcom/transsion/camera/feature/makeup/R$dimen;->makeup_bottom_0_expand_bottom_margin:I

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 673
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mBottomContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v5, Lcom/transsion/camera/feature/makeup/R$dimen;->makeup_bottom_0_expand_top_margin:I

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto/16 :goto_1

    :cond_2
    const/16 p1, 0x33

    .line 662
    iput p1, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 663
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mBottomContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v5, Lcom/transsion/camera/feature/makeup/R$dimen;->makeup_bottom_90_expand_right_margin:I

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 664
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mBottomContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v5, Lcom/transsion/camera/feature/makeup/R$dimen;->makeup_bottom_90_expand_bottom_margin:I

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 665
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mBottomContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v5, Lcom/transsion/camera/feature/makeup/R$dimen;->makeup_bottom_90_expand_left_margin:I

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_1

    :cond_3
    const/16 p1, 0x35

    .line 656
    iput p1, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 657
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mBottomContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v5, Lcom/transsion/camera/feature/makeup/R$dimen;->makeup_bottom_0_expand_bottom_margin:I

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 658
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mBottomContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v5, Lcom/transsion/camera/feature/makeup/R$dimen;->makeup_bottom_0_expand_left_margin:I

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 659
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mBottomContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v5, Lcom/transsion/camera/feature/makeup/R$dimen;->makeup_bottom_0_expand_top_margin:I

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_1

    :cond_4
    const/16 p1, 0x55

    .line 650
    iput p1, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 651
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mBottomContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v5, Lcom/transsion/camera/feature/makeup/R$dimen;->makeup_bottom_90_expand_right_margin:I

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 652
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mBottomContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v5, Lcom/transsion/camera/feature/makeup/R$dimen;->makeup_bottom_90_expand_bottom_margin:I

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 653
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mBottomContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v5, Lcom/transsion/camera/feature/makeup/R$dimen;->makeup_bottom_90_expand_left_margin:I

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 676
    :goto_1
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mBottomContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    add-int/2addr v0, v2

    rem-int/lit16 v0, v0, 0x168

    invoke-virtual {p1, v0, v8}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 677
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mBottomContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-nez p1, :cond_5

    .line 678
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p1, :cond_5

    .line 679
    invoke-interface {p1, v8, v8, v8}, Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;->sinkUI(ZIZ)V

    .line 682
    :cond_5
    iput v8, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 683
    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 684
    :cond_6
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v0

    const/4 v9, 0x2

    if-eqz v0, :cond_7

    if-eqz p1, :cond_7

    new-array p1, v9, [I

    aput v7, p1, v8

    aput v2, p1, v6

    .line 685
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v6, 0x190

    .line 686
    invoke-virtual {p1, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 687
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 688
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI$$ExternalSyntheticLambda4;

    invoke-direct {v0, v4, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI$$ExternalSyntheticLambda4;-><init>(Landroid/widget/FrameLayout$LayoutParams;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 692
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 693
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mSeekBarContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 694
    :cond_7
    iget p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    if-eqz p1, :cond_8

    if-ne p1, v9, :cond_a

    .line 697
    :cond_8
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mBottomContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-nez p1, :cond_9

    .line 698
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p1, :cond_9

    .line 699
    invoke-interface {p1, v6, v8, v6}, Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;->sinkUI(ZIZ)V

    .line 702
    :cond_9
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mBottomContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p1, v8, v8}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 703
    iput v2, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 704
    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 706
    :cond_a
    :goto_2
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->mBottomContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
