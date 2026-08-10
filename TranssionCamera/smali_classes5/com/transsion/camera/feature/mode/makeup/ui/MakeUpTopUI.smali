.class public Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;
.super Landroid/widget/LinearLayout;
.source "MakeUpTopUI.java"

# interfaces
.implements Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$SeekBarStatusListener;,
        Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$SeekBarChangeListener;,
        Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$ContrastListener;,
        Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$BarClickListener;
    }
.end annotation


# static fields
.field public static final CLICK_FB_BAR:I = 0x1

.field private static final CLICK_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final CLICK_MU_BAR:I = 0x3

.field public static final CLICK_SB_BAR:I = 0x2

.field private static final DURATION:I = 0x12c

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field public static isPressBack:Z


# instance fields
.field private alphaAnimator:Landroid/animation/ObjectAnimator;

.field private mContractBar:Landroid/view/View;

.field private mContrastBarAnim:Landroid/animation/ObjectAnimator;

.field private mContrastListener:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$ContrastListener;

.field private mContrastState:Z

.field private mFaceBeautyBar:Landroid/view/View;

.field private mFaceBeautyType:I

.field private final mFadeInInterpolator:Landroid/view/animation/PathInterpolator;

.field private final mFadeOutInterpolator:Landroid/view/animation/PathInterpolator;

.field private mIsNeedAnimation:Z

.field private mIsSupportMakeup:Z

.field private mListener:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$BarClickListener;

.field private mMakeUpBar:Landroid/view/View;

.field private mSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

.field private mSeekBarAnim:Landroid/animation/ObjectAnimator;

.field private mSeekBarChangeListener:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$SeekBarChangeListener;

.field private mSeekBarStatusListener:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$SeekBarStatusListener;

.field private mSlimBodyBar:Landroid/view/View;

.field private mState:I

.field private mSwitchContainer:Landroid/view/View;

.field private mSwitchContainerAnim:Landroid/animation/ObjectAnimator;


# direct methods
.method public static synthetic $r8$lambda$x8QTDIyBoqlQze4Lal7h_oFtPJc(Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->lambda$onFinishInflate$0(IZ)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/4 v0, 0x0

    .line 34
    sput-boolean v0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->isPressBack:Z

    .line 39
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$1;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$1;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->CLICK_MAP:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 289
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 36
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mIsSupportMakeup:Z

    const/4 p1, 0x1

    .line 37
    iput p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mFaceBeautyType:I

    .line 68
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const/high16 v0, 0x3e800000    # 0.25f

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p1, v0, v1, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mFadeOutInterpolator:Landroid/view/animation/PathInterpolator;

    .line 69
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const v0, 0x3ea8f5c3    # 0.33f

    const v3, 0x3f28f5c3    # 0.66f

    invoke-direct {p1, v0, v1, v3, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mFadeInInterpolator:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 293
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 36
    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mIsSupportMakeup:Z

    const/4 p2, 0x1

    .line 37
    iput p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mFaceBeautyType:I

    .line 68
    new-instance p2, Landroid/view/animation/PathInterpolator;

    const/high16 v0, 0x3e800000    # 0.25f

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p2, v0, v1, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mFadeOutInterpolator:Landroid/view/animation/PathInterpolator;

    .line 69
    new-instance p2, Landroid/view/animation/PathInterpolator;

    const v0, 0x3ea8f5c3    # 0.33f

    const v3, 0x3f28f5c3    # 0.66f

    invoke-direct {p2, v0, v1, v3, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mFadeInInterpolator:Landroid/view/animation/PathInterpolator;

    .line 294
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "is_support_makeup"

    invoke-static {p1, v0, p2}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mIsSupportMakeup:Z

    const-string p2, "face_beauty_type"

    .line 295
    invoke-static {p1, p2}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mFaceBeautyType:I

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->onSeekBarVisible()V

    return-void
.end method

.method private synthetic lambda$onFinishInflate$0(IZ)V
    .locals 0

    .line 323
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mSeekBarChangeListener:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$SeekBarChangeListener;

    if-eqz p0, :cond_0

    .line 324
    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$SeekBarChangeListener;->onProgressChanged(IZ)V

    :cond_0
    return-void
.end method

.method private onSeekBarVisible()V
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mSeekBarStatusListener:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$SeekBarStatusListener;

    if-eqz v0, :cond_1

    .line 210
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    if-eqz p0, :cond_0

    .line 211
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 210
    :goto_0
    invoke-interface {v0, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$SeekBarStatusListener;->onSeekBarVisible(Z)V

    :cond_1
    return-void
.end method

.method private setTopBarOnTouchListener()V
    .locals 3

    .line 268
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mSlimBodyBar:Landroid/view/View;

    const v1, 0x3f4ccccd    # 0.8f

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/transsion/camera/utils/AnimationUtils;->pressSealAnimation(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V

    .line 269
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mMakeUpBar:Landroid/view/View;

    invoke-static {v0, v1, v2}, Lcom/transsion/camera/utils/AnimationUtils;->pressSealAnimation(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V

    .line 270
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mFaceBeautyBar:Landroid/view/View;

    invoke-static {p0, v1, v2}, Lcom/transsion/camera/utils/AnimationUtils;->pressSealAnimation(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V

    return-void
.end method

.method private showOrHideAnim(Landroid/animation/ObjectAnimator;Landroid/view/View;ZZ)Landroid/animation/ObjectAnimator;
    .locals 5

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 221
    :cond_0
    invoke-static {p1}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    const/4 p1, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p3, :cond_1

    move v2, p1

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    if-eqz p3, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    move v3, p1

    :goto_1
    const/4 v4, 0x0

    if-eqz p4, :cond_4

    const/4 p1, 0x2

    new-array p1, p1, [F

    aput v2, p1, v4

    const/4 p4, 0x1

    aput v3, p1, p4

    const-string p4, "alpha"

    .line 226
    invoke-static {p2, p4, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0x12c

    .line 227
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    if-eqz p3, :cond_3

    .line 229
    iget-object p3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mFadeInInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, p3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 230
    new-instance p3, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$2;

    invoke-direct {p3, p0, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$2;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;Landroid/view/View;)V

    invoke-virtual {p1, p3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_2

    .line 244
    :cond_3
    iget-object p3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mFadeOutInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, p3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 245
    new-instance p3, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$3;

    invoke-direct {p3, p0, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$3;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;Landroid/view/View;)V

    invoke-virtual {p1, p3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 253
    :goto_2
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-object p1

    :cond_4
    if-eqz p3, :cond_5

    .line 257
    invoke-virtual {p2, v1}, Landroid/view/View;->setAlpha(F)V

    .line 258
    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 260
    :cond_5
    invoke-virtual {p2, p1}, Landroid/view/View;->setAlpha(F)V

    const/16 p0, 0x8

    .line 261
    invoke-virtual {p2, p0}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    return-object v0
.end method


# virtual methods
.method public isNotSupportItdAndMakeUp()Z
    .locals 1

    .line 299
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mIsSupportMakeup:Z

    if-nez v0, :cond_0

    iget p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mFaceBeautyType:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public notifyProgress(IIII)V
    .locals 0

    .line 144
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    if-eqz p0, :cond_0

    .line 145
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->updateSeekBarData(IIII)V

    :cond_0
    return-void
.end method

.method public notifySelect(IZ)V
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 283
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mMakeUpBar:Landroid/view/View;

    invoke-virtual {p0, p2}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0

    .line 280
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mSlimBodyBar:Landroid/view/View;

    invoke-virtual {p0, p2}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0

    .line 277
    :cond_2
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mFaceBeautyBar:Landroid/view/View;

    invoke-virtual {p0, p2}, Landroid/view/View;->setSelected(Z)V

    :goto_0
    return-void
.end method

.method public notifyState(IZ)V
    .locals 3

    .line 173
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyState mState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " -> state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 174
    iput p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mState:I

    .line 175
    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mIsNeedAnimation:Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    if-eq p1, v0, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    goto/16 :goto_0

    .line 199
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mSeekBarAnim:Landroid/animation/ObjectAnimator;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    invoke-direct {p0, p1, v2, v1, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->showOrHideAnim(Landroid/animation/ObjectAnimator;Landroid/view/View;ZZ)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mSeekBarAnim:Landroid/animation/ObjectAnimator;

    .line 200
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mSwitchContainerAnim:Landroid/animation/ObjectAnimator;

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mSwitchContainer:Landroid/view/View;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mIsNeedAnimation:Z

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->showOrHideAnim(Landroid/animation/ObjectAnimator;Landroid/view/View;ZZ)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mSwitchContainerAnim:Landroid/animation/ObjectAnimator;

    .line 201
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mContractBar:Landroid/view/View;

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->isNotSupportItdAndMakeUp()Z

    move-result p1

    if-nez p1, :cond_4

    .line 202
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mContrastBarAnim:Landroid/animation/ObjectAnimator;

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mContractBar:Landroid/view/View;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mIsNeedAnimation:Z

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->showOrHideAnim(Landroid/animation/ObjectAnimator;Landroid/view/View;ZZ)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mContrastBarAnim:Landroid/animation/ObjectAnimator;

    goto/16 :goto_0

    .line 192
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mSeekBarAnim:Landroid/animation/ObjectAnimator;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    invoke-direct {p0, p1, v2, v0, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->showOrHideAnim(Landroid/animation/ObjectAnimator;Landroid/view/View;ZZ)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mSeekBarAnim:Landroid/animation/ObjectAnimator;

    .line 193
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mSwitchContainerAnim:Landroid/animation/ObjectAnimator;

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mSwitchContainer:Landroid/view/View;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mIsNeedAnimation:Z

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->showOrHideAnim(Landroid/animation/ObjectAnimator;Landroid/view/View;ZZ)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mSwitchContainerAnim:Landroid/animation/ObjectAnimator;

    .line 194
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mContractBar:Landroid/view/View;

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->isNotSupportItdAndMakeUp()Z

    move-result p1

    if-nez p1, :cond_4

    .line 195
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mContrastBarAnim:Landroid/animation/ObjectAnimator;

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mContractBar:Landroid/view/View;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mIsNeedAnimation:Z

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->showOrHideAnim(Landroid/animation/ObjectAnimator;Landroid/view/View;ZZ)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mContrastBarAnim:Landroid/animation/ObjectAnimator;

    goto :goto_0

    .line 185
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mSeekBarAnim:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->showOrHideAnim(Landroid/animation/ObjectAnimator;Landroid/view/View;ZZ)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mSeekBarAnim:Landroid/animation/ObjectAnimator;

    .line 186
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mSwitchContainerAnim:Landroid/animation/ObjectAnimator;

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mSwitchContainer:Landroid/view/View;

    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mIsNeedAnimation:Z

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->showOrHideAnim(Landroid/animation/ObjectAnimator;Landroid/view/View;ZZ)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mSwitchContainerAnim:Landroid/animation/ObjectAnimator;

    .line 187
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mContractBar:Landroid/view/View;

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->isNotSupportItdAndMakeUp()Z

    move-result p1

    if-nez p1, :cond_4

    .line 188
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mContrastBarAnim:Landroid/animation/ObjectAnimator;

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mContractBar:Landroid/view/View;

    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mIsNeedAnimation:Z

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->showOrHideAnim(Landroid/animation/ObjectAnimator;Landroid/view/View;ZZ)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mContrastBarAnim:Landroid/animation/ObjectAnimator;

    goto :goto_0

    .line 178
    :cond_3
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mSeekBarAnim:Landroid/animation/ObjectAnimator;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    invoke-direct {p0, p1, v2, v1, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->showOrHideAnim(Landroid/animation/ObjectAnimator;Landroid/view/View;ZZ)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mSeekBarAnim:Landroid/animation/ObjectAnimator;

    .line 179
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mSwitchContainerAnim:Landroid/animation/ObjectAnimator;

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mSwitchContainer:Landroid/view/View;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mIsNeedAnimation:Z

    invoke-direct {p0, p1, p2, v0, v2}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->showOrHideAnim(Landroid/animation/ObjectAnimator;Landroid/view/View;ZZ)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mSwitchContainerAnim:Landroid/animation/ObjectAnimator;

    .line 180
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mContractBar:Landroid/view/View;

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->isNotSupportItdAndMakeUp()Z

    move-result p1

    if-nez p1, :cond_4

    .line 181
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mContrastBarAnim:Landroid/animation/ObjectAnimator;

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mContractBar:Landroid/view/View;

    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mIsNeedAnimation:Z

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->showOrHideAnim(Landroid/animation/ObjectAnimator;Landroid/view/View;ZZ)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mContrastBarAnim:Landroid/animation/ObjectAnimator;

    .line 206
    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->onSeekBarVisible()V

    return-void
.end method

.method public onBackPressed()Z
    .locals 4

    const/4 v0, 0x1

    .line 158
    sput-boolean v0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->isPressBack:Z

    .line 159
    iget v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mState:I

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 160
    invoke-virtual {p0, v2, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->notifyState(IZ)V

    .line 161
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mContrastListener:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$ContrastListener;

    if-eqz v1, :cond_0

    iget-boolean v3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mContrastState:Z

    if-eqz v3, :cond_0

    .line 162
    iput-boolean v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mContrastState:Z

    .line 163
    invoke-interface {v1, v2}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$ContrastListener;->closeContrast(Z)V

    .line 164
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mContractBar:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/view/View;->setSelected(Z)V

    :cond_0
    return v0

    :cond_1
    return v2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mListener:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$BarClickListener;

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 101
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->CLICK_MAP:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mListener:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$BarClickListener;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$BarClickListener;->barOnClick(I)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 307
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 308
    sget v0, Lcom/transsion/camera/feature/makeup/R$id;->face_beauty_bar:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mFaceBeautyBar:Landroid/view/View;

    const/4 v1, 0x1

    .line 309
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 310
    sget v0, Lcom/transsion/camera/feature/makeup/R$id;->slimbody_bar:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mSlimBodyBar:Landroid/view/View;

    .line 311
    invoke-static {}, Lcom/transsion/camera/utils/AreaUtil;->isSouthAsia()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/transsion/camera/feature/makeup/R$drawable;->cw_btn_slimbody_south_asia:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/transsion/camera/feature/makeup/R$drawable;->cw_btn_slimbody_universal:I

    .line 312
    :goto_0
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mSlimBodyBar:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 313
    sget v0, Lcom/transsion/camera/feature/makeup/R$id;->makeup_bar:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mMakeUpBar:Landroid/view/View;

    .line 314
    sget v0, Lcom/transsion/camera/feature/makeup/R$id;->contrast:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mContractBar:Landroid/view/View;

    .line 315
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mFaceBeautyBar:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 316
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mSlimBodyBar:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 317
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mContractBar:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 318
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mMakeUpBar:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 319
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->setTopBarOnTouchListener()V

    .line 320
    sget v0, Lcom/transsion/camera/feature/makeup/R$id;->switch_bar:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mSwitchContainer:Landroid/view/View;

    .line 321
    sget v0, Lcom/transsion/camera/feature/makeup/R$id;->seek_bar:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    .line 322
    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->setOnSeekBarChangeListener(Lcom/transsion/camera/app/ui/widget/BiDiSeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 74
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 75
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v1, 0x1

    if-eqz p2, :cond_2

    if-eq p2, v1, :cond_0

    const/4 v2, 0x3

    if-eq p2, v2, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mContrastListener:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$ContrastListener;

    if-eqz p2, :cond_1

    sget v2, Lcom/transsion/camera/feature/makeup/R$id;->contrast:I

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mContrastState:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 87
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mContrastState:Z

    .line 88
    invoke-interface {p2, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$ContrastListener;->closeContrast(Z)V

    .line 89
    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 91
    :cond_1
    invoke-static {p1}, Lcom/transsion/camera/utils/AnimationUtils;->stopPressedAnimator(Landroid/view/View;)V

    goto :goto_0

    .line 77
    :cond_2
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mContrastListener:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$ContrastListener;

    if-eqz p2, :cond_3

    sget v2, Lcom/transsion/camera/feature/makeup/R$id;->contrast:I

    if-ne v0, v2, :cond_3

    .line 78
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mContrastState:Z

    .line 79
    invoke-interface {p2}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$ContrastListener;->openContrast()V

    .line 80
    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    :cond_3
    const p0, 0x3f4ccccd    # 0.8f

    .line 82
    invoke-static {p1, p0}, Lcom/transsion/camera/utils/AnimationUtils;->startPressedAnimator(Landroid/view/View;F)V

    :goto_0
    return v1
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    .line 332
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 334
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mContrastListener:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$ContrastListener;

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mContrastState:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 335
    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mContrastState:Z

    .line 336
    invoke-interface {p1, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$ContrastListener;->closeContrast(Z)V

    .line 337
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mContractBar:Landroid/view/View;

    invoke-virtual {p0, p2}, Landroid/view/View;->setSelected(Z)V

    :cond_0
    return-void
.end method

.method public resetToInitState()V
    .locals 3

    .line 342
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/16 v2, 0x8

    .line 343
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 344
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mSeekBarStatusListener:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$SeekBarStatusListener;

    if-eqz v0, :cond_0

    .line 345
    invoke-interface {v0, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$SeekBarStatusListener;->onSeekBarVisible(Z)V

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mSwitchContainer:Landroid/view/View;

    if-eqz v0, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 349
    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 350
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mSwitchContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 352
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mContractBar:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->isNotSupportItdAndMakeUp()Z

    move-result v0

    if-nez v0, :cond_2

    .line 354
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mContractBar:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public setListener(Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$BarClickListener;Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$SeekBarChangeListener;Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$ContrastListener;Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$SeekBarStatusListener;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mListener:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$BarClickListener;

    .line 152
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mSeekBarChangeListener:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$SeekBarChangeListener;

    .line 153
    iput-object p3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mContrastListener:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$ContrastListener;

    .line 154
    iput-object p4, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mSeekBarStatusListener:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$SeekBarStatusListener;

    return-void
.end method

.method public setMakeUpBarState(Z)V
    .locals 3

    .line 134
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setMakeUpBarState], isSupport:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 136
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mMakeUpBar:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 138
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mMakeUpBar:Landroid/view/View;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setSlimBodyBarState(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 127
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mSlimBodyBar:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 129
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mSlimBodyBar:Landroid/view/View;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public updateLowLight(Z)V
    .locals 2

    .line 359
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mContractBar:Landroid/view/View;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 360
    sget v1, Lcom/transsion/camera/feature/makeup/R$drawable;->cw_btn_contrast_low_light:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/transsion/camera/feature/makeup/R$drawable;->cw_btn_contrast:I

    .line 361
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 364
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mFaceBeautyBar:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 365
    invoke-static {}, Lcom/transsion/camera/utils/AreaUtil;->isSouthAsia()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    .line 366
    sget v0, Lcom/transsion/camera/feature/makeup/R$drawable;->cw_btn_bf_south_asia_lowlight:I

    goto :goto_1

    :cond_2
    sget v0, Lcom/transsion/camera/feature/makeup/R$drawable;->cw_btn_bf_south_asia:I

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_4

    .line 367
    sget v0, Lcom/transsion/camera/feature/makeup/R$drawable;->cw_btn_bf_universal_lowlight:I

    goto :goto_1

    :cond_4
    sget v0, Lcom/transsion/camera/feature/makeup/R$drawable;->cw_btn_bf_universal:I

    .line 368
    :goto_1
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mFaceBeautyBar:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 371
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mMakeUpBar:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 372
    invoke-static {}, Lcom/transsion/camera/utils/AreaUtil;->isSouthAsia()Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz p1, :cond_6

    .line 373
    sget p1, Lcom/transsion/camera/feature/makeup/R$drawable;->cw_btn_makeup_south_asia_low_light:I

    goto :goto_2

    :cond_6
    sget p1, Lcom/transsion/camera/feature/makeup/R$drawable;->cw_btn_makeup_south_asia:I

    goto :goto_2

    :cond_7
    if-eqz p1, :cond_8

    .line 374
    sget p1, Lcom/transsion/camera/feature/makeup/R$drawable;->cw_btn_makeup_universal_low_light:I

    goto :goto_2

    :cond_8
    sget p1, Lcom/transsion/camera/feature/makeup/R$drawable;->cw_btn_makeup_universal:I

    .line 375
    :goto_2
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->mMakeUpBar:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_9
    return-void
.end method
