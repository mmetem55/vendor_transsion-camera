.class public Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;
.super Landroid/widget/FrameLayout;
.source "VideoMakeUpTopUI.java"

# interfaces
.implements Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$SeekBarStatusListener;,
        Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$SeekBarChangeListener;,
        Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$ContrastListener;,
        Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$BarClickListener;
    }
.end annotation


# static fields
.field public static final CLICK_MU_BAR:I = 0x1

.field private static final DURATION:I = 0x12c

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private mContrastListener:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$ContrastListener;

.field private final mFadeOutInterpolator:Landroid/view/animation/PathInterpolator;

.field private final mInterpolator:Landroid/view/animation/PathInterpolator;

.field private mListener:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$BarClickListener;

.field private mMakeUpBar:Landroid/view/View;

.field private mScreenFormType:I

.field private mSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

.field private mSeekBarAnimator:Landroid/animation/Animator;

.field private mSeekBarChangeListener:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$SeekBarChangeListener;

.field private mSeekBarContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

.field private mSeekBarStatusListener:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$SeekBarStatusListener;

.field private mState:I

.field private mSwitchContainer:Landroid/view/View;

.field private mSwitchContainerAnimator:Landroid/animation/Animator;


# direct methods
.method public static synthetic $r8$lambda$62Htyz9PpEZpXjdntLNtY4P0qWU(Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->lambda$onFinishInflate$0(IZ)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 31
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 284
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 40
    iput p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mScreenFormType:I

    .line 54
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const p2, 0x3ea8f5c3    # 0.33f

    const/4 v0, 0x0

    const v1, 0x3f28f5c3    # 0.66f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p1, p2, v0, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mInterpolator:Landroid/view/animation/PathInterpolator;

    .line 55
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const/high16 p2, 0x3e800000    # 0.25f

    invoke-direct {p1, p2, v0, v0, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mFadeOutInterpolator:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;)Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    return-object p0
.end method

.method static synthetic access$100()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 29
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;Z)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->notifySeekBarVisibleChanged(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;)Landroid/view/View;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mSwitchContainer:Landroid/view/View;

    return-object p0
.end method

.method private isSeekBarVisible()Z
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mSeekBarContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$onFinishInflate$0(IZ)V
    .locals 0

    .line 301
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mSeekBarChangeListener:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$SeekBarChangeListener;

    if-eqz p0, :cond_0

    .line 302
    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$SeekBarChangeListener;->onProgressChanged(IZ)V

    :cond_0
    return-void
.end method

.method private notifySeekBarVisibleChanged(Z)V
    .locals 0

    .line 209
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mSeekBarStatusListener:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$SeekBarStatusListener;

    if-eqz p0, :cond_0

    .line 210
    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$SeekBarStatusListener;->onSeekBarVisible(Z)V

    :cond_0
    return-void
.end method

.method private updateSeekBarVisibility(ZZ)V
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 162
    sget-object p1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "mSeekBar is null"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 163
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->notifySeekBarVisibleChanged(Z)V

    return-void

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mSeekBarAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mSeekBarAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_1
    if-eqz p2, :cond_2

    .line 170
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$1;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$1;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;Z)V

    invoke-direct {p0, p2, p1, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->visibilityAnimator(Landroid/view/View;ZLandroid/animation/Animator$AnimatorListener;)Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mSeekBarAnimator:Landroid/animation/Animator;

    .line 200
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    goto :goto_1

    .line 202
    :cond_2
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 203
    sget-object p2, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateSeekBarVisibility visible: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 204
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->notifySeekBarVisibleChanged(Z)V

    :goto_1
    return-void
.end method

.method private updateSwitchContainerVisibility(ZZ)V
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mSwitchContainer:Landroid/view/View;

    if-nez v0, :cond_0

    .line 216
    sget-object p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mSwitchContainer is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mSwitchContainerAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 220
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mSwitchContainerAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_1
    if-eqz p2, :cond_2

    .line 223
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mSwitchContainer:Landroid/view/View;

    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$2;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$2;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;Z)V

    invoke-direct {p0, p2, p1, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->visibilityAnimator(Landroid/view/View;ZLandroid/animation/Animator$AnimatorListener;)Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mSwitchContainerAnimator:Landroid/animation/Animator;

    .line 252
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    goto :goto_1

    .line 254
    :cond_2
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mSwitchContainer:Landroid/view/View;

    if-eqz p1, :cond_3

    const/4 p2, 0x0

    goto :goto_0

    :cond_3
    const/16 p2, 0x8

    :goto_0
    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 255
    sget-object p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateSwitchContainerVisibility visible: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private visibilityAnimator(Landroid/view/View;ZLandroid/animation/Animator$AnimatorListener;)Landroid/animation/Animator;
    .locals 4

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz p2, :cond_1

    move v0, v1

    :cond_1
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput v0, v1, v2

    const-string v0, "alpha"

    .line 263
    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    if-eqz p2, :cond_2

    .line 264
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mInterpolator:Landroid/view/animation/PathInterpolator;

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mFadeOutInterpolator:Landroid/view/animation/PathInterpolator;

    :goto_1
    invoke-virtual {p1, p0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0x12c

    .line 265
    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 266
    invoke-virtual {p1, p3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object p1
.end method


# virtual methods
.method public currentState()I
    .locals 0

    .line 271
    iget p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mState:I

    return p0
.end method

.method public notifyProgress(IIII)V
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    if-eqz p0, :cond_0

    .line 106
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->updateSeekBarData(IIII)V

    :cond_0
    return-void
.end method

.method public notifySelect(IZ)V
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 277
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mMakeUpBar:Landroid/view/View;

    if-eqz p0, :cond_0

    .line 278
    invoke-virtual {p0, p2}, Landroid/view/View;->setSelected(Z)V

    :cond_0
    return-void
.end method

.method public notifyState(IZ)V
    .locals 3

    .line 137
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyState mState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " -> state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; animate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 138
    iput p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mState:I

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    const/16 v0, 0x83

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    goto :goto_0

    .line 153
    :cond_0
    invoke-direct {p0, v1, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->updateSeekBarVisibility(ZZ)V

    .line 154
    invoke-direct {p0, p2, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->updateSwitchContainerVisibility(ZZ)V

    .line 155
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    goto :goto_0

    .line 148
    :cond_1
    invoke-direct {p0, p2, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->updateSeekBarVisibility(ZZ)V

    .line 149
    invoke-direct {p0, p2, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->updateSwitchContainerVisibility(ZZ)V

    .line 150
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    goto :goto_0

    .line 141
    :cond_2
    invoke-direct {p0, p2, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->updateSeekBarVisibility(ZZ)V

    .line 142
    invoke-direct {p0, p2, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->updateSwitchContainerVisibility(ZZ)V

    .line 143
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 p1, 0x84

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :goto_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 3

    const/4 v0, 0x1

    .line 123
    sput-boolean v0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->isPressBack:Z

    .line 124
    iget v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mState:I

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 125
    invoke-virtual {p0, v2, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->notifyState(IZ)V

    return v0

    :cond_0
    return v2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mListener:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$BarClickListener;

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    .line 81
    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$BarClickListener;->barOnClick(I)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 289
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 290
    sget v0, Lcom/transsion/camera/feature/makeup/R$id;->switch_bar:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mSwitchContainer:Landroid/view/View;

    .line 291
    sget v0, Lcom/transsion/camera/feature/makeup/R$id;->makeup_bar:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mMakeUpBar:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 293
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 295
    :cond_0
    sget v0, Lcom/transsion/camera/feature/makeup/R$id;->contrast:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 297
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 299
    :cond_1
    sget v0, Lcom/transsion/camera/feature/makeup/R$id;->seek_bar:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    .line 300
    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->setOnSeekBarChangeListener(Lcom/transsion/camera/app/ui/widget/BiDiSeekBar$OnSeekBarChangeListener;)V

    .line 305
    sget v0, Lcom/transsion/camera/feature/makeup/R$id;->makeup_top_seekbar_container:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mSeekBarContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 59
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 60
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    if-eq p2, v1, :cond_0

    const/4 v2, 0x3

    if-eq p2, v2, :cond_0

    goto :goto_0

    .line 69
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mContrastListener:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$ContrastListener;

    if-eqz p0, :cond_2

    sget p2, Lcom/transsion/camera/feature/makeup/R$id;->contrast:I

    if-ne v0, p2, :cond_2

    const/4 p2, 0x0

    .line 70
    invoke-interface {p0, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$ContrastListener;->closeContrast(Z)V

    .line 71
    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0

    .line 62
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mContrastListener:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$ContrastListener;

    if-eqz p0, :cond_2

    sget p2, Lcom/transsion/camera/feature/makeup/R$id;->contrast:I

    if-ne v0, p2, :cond_2

    .line 63
    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$ContrastListener;->openContrast()V

    .line 64
    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    :cond_2
    :goto_0
    return v1
.end method

.method public setAppUI(Lcom/transsion/camera/app/common/IAppUI;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-void
.end method

.method public setEnabled(Z)V
    .locals 3

    .line 309
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 310
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEnabled enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mMakeUpBar:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 312
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 314
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    if-eqz p0, :cond_1

    .line 315
    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method public setListener(Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$BarClickListener;Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$SeekBarChangeListener;Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$ContrastListener;Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$SeekBarStatusListener;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mListener:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$BarClickListener;

    .line 117
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mSeekBarChangeListener:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$SeekBarChangeListener;

    .line 118
    iput-object p3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mContrastListener:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$ContrastListener;

    .line 119
    iput-object p4, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mSeekBarStatusListener:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$SeekBarStatusListener;

    return-void
.end method

.method public updateLayout(II)V
    .locals 6

    .line 320
    iput p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mScreenFormType:I

    .line 321
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mSeekBarContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 322
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, 0x0

    .line 323
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    const/4 v3, 0x1

    if-ne p1, v3, :cond_3

    .line 325
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mSeekBarContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/feature/makeup/R$dimen;->makeup_top_expand_seekbar_layout_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 326
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mSeekBarContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/feature/makeup/R$dimen;->makeup_top_expand_seekbar_parent_layout_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/16 v3, 0x5a

    if-eq p2, v3, :cond_2

    const/16 v3, 0xb4

    if-eq p2, v3, :cond_1

    const/16 v3, 0x10e

    if-eq p2, v3, :cond_0

    const/16 v3, 0x53

    .line 346
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 347
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mSeekBarContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/feature/makeup/R$dimen;->makeup_top_0_expand_seekbar_bottom_margin:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 348
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mSeekBarContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/feature/makeup/R$dimen;->makeup_top_0_expand_seekbar_left_margin:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_0

    :cond_0
    const/16 v3, 0x33

    .line 339
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 340
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mSeekBarContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/feature/makeup/R$dimen;->makeup_top_90_expand_seekbar_right_margin:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 341
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mSeekBarContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/feature/makeup/R$dimen;->makeup_top_90_expand_seekbar_bottom_margin:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_0

    :cond_1
    const/16 v3, 0x35

    .line 334
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 335
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mSeekBarContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/feature/makeup/R$dimen;->makeup_top_0_expand_seekbar_bottom_margin:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 336
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mSeekBarContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/feature/makeup/R$dimen;->makeup_top_0_expand_seekbar_left_margin:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_0

    :cond_2
    const/16 v3, 0x55

    .line 329
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 330
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mSeekBarContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/feature/makeup/R$dimen;->makeup_top_90_expand_seekbar_right_margin:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 331
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mSeekBarContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/feature/makeup/R$dimen;->makeup_top_90_expand_seekbar_bottom_margin:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 351
    :goto_0
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mSeekBarContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    add-int/lit16 v4, p2, 0x10e

    rem-int/lit16 v4, v4, 0x168

    invoke-virtual {v3, v4, v2}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 352
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mSeekBarStatusListener:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$SeekBarStatusListener;

    if-eqz v2, :cond_5

    .line 353
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->isSeekBarVisible()Z

    move-result v3

    invoke-interface {v2, v3}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$SeekBarStatusListener;->onSeekBarVisible(Z)V

    goto :goto_1

    :cond_3
    if-nez p1, :cond_4

    .line 356
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mSeekBarContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/transsion/camera/feature/makeup/R$dimen;->makeup_top_column_seekbar_layout_width:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 357
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mSeekBarContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/transsion/camera/feature/makeup/R$dimen;->makeup_top_column_seekbar_parent_layout_width:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 358
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 359
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mSeekBarContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v3, v2, v2}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 360
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mSeekBarStatusListener:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$SeekBarStatusListener;

    if-eqz v2, :cond_5

    .line 361
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->isSeekBarVisible()Z

    move-result v3

    invoke-interface {v2, v3}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$SeekBarStatusListener;->onSeekBarVisible(Z)V

    goto :goto_1

    :cond_4
    const/4 v4, 0x2

    if-ne p1, v4, :cond_5

    .line 364
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mSeekBarContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/transsion/camera/feature/makeup/R$dimen;->makeup_top_column_seekbar_layout_width:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 365
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mSeekBarContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/transsion/camera/feature/makeup/R$dimen;->makeup_top_column_seekbar_parent_layout_width:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 366
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 367
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mSeekBarContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v3, v2, v2}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 368
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mSeekBarStatusListener:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$SeekBarStatusListener;

    if-eqz v2, :cond_5

    .line 369
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->isSeekBarVisible()Z

    move-result v3

    invoke-interface {v2, v3}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$SeekBarStatusListener;->onSeekBarVisible(Z)V

    .line 372
    :cond_5
    :goto_1
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mSeekBarContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 373
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 374
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    invoke-virtual {p0, p2, p1}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->updateProgressText(II)V

    return-void
.end method

.method public updateProgressText(II)V
    .locals 0

    .line 378
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->updateProgressText(II)V

    return-void
.end method
