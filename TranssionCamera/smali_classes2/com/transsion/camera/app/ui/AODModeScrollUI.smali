.class public Lcom/transsion/camera/app/ui/AODModeScrollUI;
.super Ljava/lang/Object;
.source "AODModeScrollUI.java"

# interfaces
.implements Lcom/transsion/camera/app/ui/IModeScrollUI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;,
        Lcom/transsion/camera/app/ui/AODModeScrollUI$ModeViewAnimatorListener;,
        Lcom/transsion/camera/app/ui/AODModeScrollUI$ModeView;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentModeView:Lcom/transsion/camera/app/ui/AODModeScrollUI$ModeView;

.field private mFadeAnimatorPending:Z

.field private mFadeAnimatorSet:Landroid/animation/AnimatorSet;

.field private mListener:Lcom/transsion/camera/app/ui/IModeScrollUI$ModeScrollListener;

.field private mModeChangedListener:Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;

.field private final mModeUIItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/ui/mode/ModeUIItem;",
            ">;"
        }
    .end annotation
.end field

.field private mNextModeView:Lcom/transsion/camera/app/ui/AODModeScrollUI$ModeView;

.field private final mOrientationHelper:Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;

.field private final mPathInterpolator:Landroid/view/animation/PathInterpolator;

.field private final mScrollAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mScrollAnimatorSet:Landroid/animation/AnimatorSet;

.field private mScrollModeIndex:I

.field private mScrollRootView:Landroid/view/View;

.field private mScrollUIVisible:Z

.field private mScrolling:Z

.field private mSelectedModeName:Ljava/lang/String;

.field private mShowFlag:Z


# direct methods
.method public static synthetic $r8$lambda$aarQU0QlhzV8IiiDDi7_aAMENG0(Lcom/transsion/camera/app/ui/AODModeScrollUI;Lcom/transsion/camera/app/common/FeatureResource;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AODModeScrollUI;->lambda$setModeList$0(Lcom/transsion/camera/app/common/FeatureResource;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 47
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/ui/AODModeScrollUI;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/AODModeScrollUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/common/manager/IScreenManager;Lcom/transsion/camera/app/ui/ScrollConsumer;)V
    .locals 4

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 53
    iput v0, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI;->mScrollModeIndex:I

    .line 75
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI;->mFadeAnimatorSet:Landroid/animation/AnimatorSet;

    .line 76
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI;->mScrollAnimatorSet:Landroid/animation/AnimatorSet;

    .line 78
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3e800000    # 0.25f

    const v2, 0x3dcccccd    # 0.1f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI;->mModeUIItems:Ljava/util/List;

    .line 261
    new-instance v0, Lcom/transsion/camera/app/ui/AODModeScrollUI$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/AODModeScrollUI$2;-><init>(Lcom/transsion/camera/app/ui/AODModeScrollUI;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI;->mScrollAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 88
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI;->mContext:Landroid/content/Context;

    .line 89
    new-instance p1, Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;

    const/4 v0, 0x0

    invoke-direct {p1, p0, p2, p3, v0}, Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;-><init>(Lcom/transsion/camera/app/ui/AODModeScrollUI;Lcom/transsion/camera/app/common/manager/IScreenManager;Lcom/transsion/camera/app/ui/ScrollConsumer;Lcom/transsion/camera/app/ui/AODModeScrollUI$1;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI;->mOrientationHelper:Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;

    return-void
.end method

.method static synthetic access$1300(Lcom/transsion/camera/app/ui/AODModeScrollUI;)Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI;->mFadeAnimatorPending:Z

    return p0
.end method

.method static synthetic access$1302(Lcom/transsion/camera/app/ui/AODModeScrollUI;Z)Z
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI;->mFadeAnimatorPending:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/transsion/camera/app/ui/AODModeScrollUI;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI;->mFadeAnimatorSet:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/app/ui/AODModeScrollUI;)Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI;->mScrolling:Z

    return p0
.end method

.method static synthetic access$600()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 45
    sget-object v0, Lcom/transsion/camera/app/ui/AODModeScrollUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$700(Lcom/transsion/camera/app/ui/AODModeScrollUI;)Landroid/view/View;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI;->mScrollRootView:Landroid/view/View;

    return-object p0
.end method

.method private inScrollAnimation()Z
    .locals 0

    .line 311
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI;->mScrollAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$setModeList$0(Lcom/transsion/camera/app/common/FeatureResource;)V
    .locals 2

    .line 117
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI;->mModeUIItems:Ljava/util/List;

    new-instance v0, Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;-><init>(Lcom/transsion/camera/app/common/FeatureResource;Z)V

    .line 118
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private modeChanged(I)Z
    .locals 0

    .line 315
    iget p0, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI;->mScrollModeIndex:I

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private modeIndex(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    .line 287
    :goto_0
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI;->mModeUIItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 288
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI;->mModeUIItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private modeItem(I)Lcom/transsion/camera/app/ui/mode/ModeUIItem;
    .locals 0

    .line 283
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI;->mModeUIItems:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    return-object p0
.end method

.method private scrollStarted()V
    .locals 0

    .line 185
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI;->mListener:Lcom/transsion/camera/app/ui/IModeScrollUI$ModeScrollListener;

    if-eqz p0, :cond_0

    .line 186
    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IModeScrollUI$ModeScrollListener;->scrollStarted()V

    :cond_0
    return-void
.end method

.method private scrollStopped(I)V
    .locals 0

    .line 197
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI;->mListener:Lcom/transsion/camera/app/ui/IModeScrollUI$ModeScrollListener;

    if-eqz p0, :cond_0

    .line 198
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IModeScrollUI$ModeScrollListener;->scrollStopped(I)V

    :cond_0
    return-void
.end method

.method private scrollTo(I)V
    .locals 1

    .line 296
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AODModeScrollUI;->inScrollAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 299
    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AODModeScrollUI;->modeChanged(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 300
    iget v0, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI;->mScrollModeIndex:I

    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/ui/AODModeScrollUI;->slideMode(II)V

    .line 301
    iput p1, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI;->mScrollModeIndex:I

    .line 302
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AODModeScrollUI;->updateScrollIndex(I)V

    .line 303
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI;->mModeUIItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI;->mSelectedModeName:Ljava/lang/String;

    .line 304
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI;->mModeChangedListener:Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;

    if-eqz p0, :cond_1

    .line 305
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;->onSwitchMode(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private showMode(I)V
    .locals 4

    .line 222
    sget-object v0, Lcom/transsion/camera/app/ui/AODModeScrollUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "scrollUIAnimator showMode"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 223
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AODModeScrollUI;->inScrollAnimation()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "scrollUIAnimator showMode inScrolling return now"

    .line 224
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 227
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI;->mFadeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 228
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI;->mScrollUIVisible:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    .line 229
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI;->mScrollUIVisible:Z

    .line 230
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AODModeScrollUI;->scrollStarted()V

    const-string v1, "scrollUIAnimator showMode set mRootView visible"

    .line 231
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI;->mScrollRootView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 234
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI;->mNextModeView:Lcom/transsion/camera/app/ui/AODModeScrollUI$ModeView;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AODModeScrollUI$ModeView;->access$200(Lcom/transsion/camera/app/ui/AODModeScrollUI$ModeView;)V

    .line 235
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI;->mCurrentModeView:Lcom/transsion/camera/app/ui/AODModeScrollUI$ModeView;

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AODModeScrollUI;->modeItem(I)Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/app/ui/AODModeScrollUI$ModeView;->access$1000(Lcom/transsion/camera/app/ui/AODModeScrollUI$ModeView;Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V

    .line 236
    iget v0, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI;->mScrollModeIndex:I

    if-eq v0, p1, :cond_2

    .line 237
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI;->mShowFlag:Z

    :cond_2
    const/4 p1, 0x0

    new-array v0, v3, [Landroid/animation/Animator;

    .line 239
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI;->mCurrentModeView:Lcom/transsion/camera/app/ui/AODModeScrollUI$ModeView;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/AODModeScrollUI$ModeView;->access$1100(Lcom/transsion/camera/app/ui/AODModeScrollUI$ModeView;)Landroid/animation/Animator;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/AODModeScrollUI;->startFadeAnimation(Landroid/animation/Animator$AnimatorListener;[Landroid/animation/Animator;)V

    return-void
.end method

.method private slideMode(II)V
    .locals 6

    .line 243
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI;->mCurrentModeView:Lcom/transsion/camera/app/ui/AODModeScrollUI$ModeView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI;->mNextModeView:Lcom/transsion/camera/app/ui/AODModeScrollUI$ModeView;

    if-nez v0, :cond_0

    goto :goto_0

    .line 246
    :cond_0
    sget-object v0, Lcom/transsion/camera/app/ui/AODModeScrollUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "scrollUIAnimator slideMode start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI;->mFadeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 248
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI;->mScrollUIVisible:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 249
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI;->mScrollUIVisible:Z

    .line 250
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AODModeScrollUI;->scrollStarted()V

    .line 251
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI;->mScrollRootView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 253
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI;->mCurrentModeView:Lcom/transsion/camera/app/ui/AODModeScrollUI$ModeView;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AODModeScrollUI$ModeView;->access$200(Lcom/transsion/camera/app/ui/AODModeScrollUI$ModeView;)V

    .line 254
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI;->mNextModeView:Lcom/transsion/camera/app/ui/AODModeScrollUI$ModeView;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI;->mModeUIItems:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    invoke-static {v0, v3}, Lcom/transsion/camera/app/ui/AODModeScrollUI$ModeView;->access$1000(Lcom/transsion/camera/app/ui/AODModeScrollUI$ModeView;Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V

    .line 255
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI;->mScrollAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    iget-object v4, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI;->mOrientationHelper:Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;

    iget-object v5, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI;->mNextModeView:Lcom/transsion/camera/app/ui/AODModeScrollUI$ModeView;

    .line 256
    invoke-static {v4, v5, p1, p2}, Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;->access$1200(Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;Lcom/transsion/camera/app/ui/AODModeScrollUI$ModeView;II)Landroid/animation/Animator;

    move-result-object p1

    aput-object p1, v3, v2

    iget-object p1, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI;->mNextModeView:Lcom/transsion/camera/app/ui/AODModeScrollUI$ModeView;

    .line 257
    invoke-static {p1}, Lcom/transsion/camera/app/ui/AODModeScrollUI$ModeView;->access$1100(Lcom/transsion/camera/app/ui/AODModeScrollUI$ModeView;)Landroid/animation/Animator;

    move-result-object p1

    aput-object p1, v3, v1

    .line 255
    invoke-direct {p0, v0, v3}, Lcom/transsion/camera/app/ui/AODModeScrollUI;->startScrollAnimation(Landroid/animation/Animator$AnimatorListener;[Landroid/animation/Animator;)V

    .line 258
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AODModeScrollUI;->startVibrator()V

    :cond_2
    :goto_0
    return-void
.end method

.method private varargs startFadeAnimation(Landroid/animation/Animator$AnimatorListener;[Landroid/animation/Animator;)V
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI;->mFadeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 160
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI;->mFadeAnimatorSet:Landroid/animation/AnimatorSet;

    .line 161
    invoke-virtual {v0, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 162
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI;->mFadeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 163
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI;->mFadeAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object p2, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 164
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AODModeScrollUI;->inScrollAnimation()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 165
    sget-object p1, Lcom/transsion/camera/app/ui/AODModeScrollUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "scrollUIAnimator startFadeAnimation pending"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 166
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI;->mFadeAnimatorPending:Z

    goto :goto_0

    .line 168
    :cond_0
    sget-object p1, Lcom/transsion/camera/app/ui/AODModeScrollUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "scrollUIAnimator startFadeAnimation now"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 169
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI;->mFadeAnimatorPending:Z

    .line 170
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI;->mFadeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    :goto_0
    return-void
.end method

.method private varargs startScrollAnimation(Landroid/animation/Animator$AnimatorListener;[Landroid/animation/Animator;)V
    .locals 2

    .line 274
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI;->mScrollAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 275
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI;->mScrollAnimatorSet:Landroid/animation/AnimatorSet;

    .line 276
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 277
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI;->mScrollAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 278
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI;->mScrollAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 279
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI;->mScrollAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private startVibrator()V
    .locals 3

    .line 359
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI;->mContext:Landroid/content/Context;

    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Vibrator;

    const-wide/16 v0, 0x32

    const/4 v2, -0x1

    .line 361
    invoke-static {v0, v1, v2}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object v0

    if-eqz p0, :cond_0

    .line 363
    invoke-virtual {p0, v0}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    :cond_0
    return-void
.end method

.method private updateScrollIndex(I)V
    .locals 0

    .line 191
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI;->mListener:Lcom/transsion/camera/app/ui/IModeScrollUI$ModeScrollListener;

    if-eqz p0, :cond_0

    .line 192
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IModeScrollUI$ModeScrollListener;->updateScrollIndex(I)V

    :cond_0
    return-void
.end method

.method private validModeIndex(I)I
    .locals 0

    .line 319
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI;->mModeUIItems:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/4 p1, 0x0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private validScrollModeIndex(I)I
    .locals 0

    .line 323
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AODModeScrollUI;->validModeIndex(I)I

    move-result p0

    const/4 p1, 0x2

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method


# virtual methods
.method public canScrollToNext()Z
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI;->mSelectedModeName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/AODModeScrollUI;->modeIndex(Ljava/lang/String;)I

    move-result p0

    const/4 v0, 0x2

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public canScrollToPrevious()Z
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI;->mSelectedModeName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/AODModeScrollUI;->modeIndex(Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public canScrolling()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public hide(Z)V
    .locals 5

    .line 129
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI;->mCurrentModeView:Lcom/transsion/camera/app/ui/AODModeScrollUI$ModeView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI;->mNextModeView:Lcom/transsion/camera/app/ui/AODModeScrollUI$ModeView;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI;->mScrolling:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 132
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI;->mScrollUIVisible:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 133
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI;->mScrollUIVisible:Z

    .line 134
    iget v0, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI;->mScrollModeIndex:I

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/AODModeScrollUI;->scrollStopped(I)V

    .line 136
    :cond_1
    sget-object v0, Lcom/transsion/camera/app/ui/AODModeScrollUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "scrollUIAnimator hide start"

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 137
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI;->mNextModeView:Lcom/transsion/camera/app/ui/AODModeScrollUI$ModeView;

    invoke-static {v2}, Lcom/transsion/camera/app/ui/AODModeScrollUI$ModeView;->access$300(Lcom/transsion/camera/app/ui/AODModeScrollUI$ModeView;)Landroid/animation/Animator;

    move-result-object v2

    if-nez p1, :cond_2

    const-wide/16 v3, 0x0

    .line 139
    invoke-virtual {v2, v3, v4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    goto :goto_0

    .line 141
    :cond_2
    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI;->mShowFlag:Z

    if-eqz v3, :cond_3

    const-string p0, "mShowFlag = true return"

    .line 142
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 146
    :cond_3
    :goto_0
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI;->mShowFlag:Z

    .line 147
    new-instance v0, Lcom/transsion/camera/app/ui/AODModeScrollUI$1;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/app/ui/AODModeScrollUI$1;-><init>(Lcom/transsion/camera/app/ui/AODModeScrollUI;Z)V

    const/4 p1, 0x1

    new-array p1, p1, [Landroid/animation/Animator;

    aput-object v2, p1, v1

    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/ui/AODModeScrollUI;->startFadeAnimation(Landroid/animation/Animator$AnimatorListener;[Landroid/animation/Animator;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const v0, 0x7f0c0028

    const/4 v1, 0x1

    .line 94
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0902b1

    .line 95
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI;->mScrollRootView:Landroid/view/View;

    .line 96
    new-instance p2, Lcom/transsion/camera/app/ui/AODModeScrollUI$ModeView;

    const v0, 0x7f09010c

    .line 97
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09010b

    .line 98
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    const v2, 0x7f09010a

    .line 99
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-direct {p2, v0, v1, v2, v3}, Lcom/transsion/camera/app/ui/AODModeScrollUI$ModeView;-><init>(Landroid/view/View;Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;Landroid/widget/TextView;Lcom/transsion/camera/app/ui/AODModeScrollUI$1;)V

    iput-object p2, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI;->mCurrentModeView:Lcom/transsion/camera/app/ui/AODModeScrollUI$ModeView;

    .line 100
    new-instance p2, Lcom/transsion/camera/app/ui/AODModeScrollUI$ModeView;

    const v0, 0x7f090318

    .line 101
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090317

    .line 102
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    const v2, 0x7f090316

    .line 103
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-direct {p2, v0, v1, v2, v3}, Lcom/transsion/camera/app/ui/AODModeScrollUI$ModeView;-><init>(Landroid/view/View;Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;Landroid/widget/TextView;Lcom/transsion/camera/app/ui/AODModeScrollUI$1;)V

    iput-object p2, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI;->mNextModeView:Lcom/transsion/camera/app/ui/AODModeScrollUI$ModeView;

    .line 104
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI;->mScrollRootView:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 105
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI;->mCurrentModeView:Lcom/transsion/camera/app/ui/AODModeScrollUI$ModeView;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/AODModeScrollUI$ModeView;->access$200(Lcom/transsion/camera/app/ui/AODModeScrollUI$ModeView;)V

    .line 106
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI;->mNextModeView:Lcom/transsion/camera/app/ui/AODModeScrollUI$ModeView;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AODModeScrollUI$ModeView;->access$200(Lcom/transsion/camera/app/ui/AODModeScrollUI$ModeView;)V

    return-object p1
.end method

.method public onOrientationChanged(I)V
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI;->mOrientationHelper:Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;

    invoke-static {v0, p1}, Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;->access$800(Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;I)V

    .line 205
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI;->mCurrentModeView:Lcom/transsion/camera/app/ui/AODModeScrollUI$ModeView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI;->mNextModeView:Lcom/transsion/camera/app/ui/AODModeScrollUI$ModeView;

    if-eqz v1, :cond_0

    .line 206
    invoke-static {v0, p1}, Lcom/transsion/camera/app/ui/AODModeScrollUI$ModeView;->access$900(Lcom/transsion/camera/app/ui/AODModeScrollUI$ModeView;I)V

    .line 207
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI;->mNextModeView:Lcom/transsion/camera/app/ui/AODModeScrollUI$ModeView;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/AODModeScrollUI$ModeView;->access$900(Lcom/transsion/camera/app/ui/AODModeScrollUI$ModeView;I)V

    :cond_0
    return-void
.end method

.method public scrollToNext()V
    .locals 1

    .line 344
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI;->mSelectedModeName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/AODModeScrollUI;->modeIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI;->mScrollModeIndex:I

    .line 345
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI;->mSelectedModeName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/AODModeScrollUI;->modeIndex(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/AODModeScrollUI;->validScrollModeIndex(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/AODModeScrollUI;->scrollTo(I)V

    return-void
.end method

.method public scrollToPrevious()V
    .locals 1

    .line 339
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI;->mSelectedModeName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/AODModeScrollUI;->modeIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI;->mScrollModeIndex:I

    .line 340
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI;->mSelectedModeName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/AODModeScrollUI;->modeIndex(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/AODModeScrollUI;->validScrollModeIndex(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/AODModeScrollUI;->scrollTo(I)V

    return-void
.end method

.method public setModeList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/FeatureResource;",
            ">;)V"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI;->mModeUIItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 117
    new-instance v0, Lcom/transsion/camera/app/ui/AODModeScrollUI$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/AODModeScrollUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/AODModeScrollUI;)V

    invoke-interface {p1, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public setModePickerListener(Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI;->mModeChangedListener:Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;

    return-void
.end method

.method public setScrollListener(Lcom/transsion/camera/app/ui/IModeScrollUI$ModeScrollListener;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI;->mListener:Lcom/transsion/camera/app/ui/IModeScrollUI$ModeScrollListener;

    return-void
.end method

.method public showMode(Ljava/lang/String;)V
    .locals 2

    .line 213
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AODModeScrollUI;->modeIndex(Ljava/lang/String;)I

    move-result v0

    .line 214
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI;->mSelectedModeName:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 215
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/AODModeScrollUI;->showMode(I)V

    .line 217
    :cond_0
    iput v0, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI;->mScrollModeIndex:I

    .line 218
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/AODModeScrollUI;->updateScrollIndex(I)V

    return-void
.end method

.method public stopScroll()V
    .locals 2

    const/4 v0, 0x0

    .line 354
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI;->mScrolling:Z

    .line 355
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI;->mModeUIItems:Ljava/util/List;

    iget v1, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI;->mScrollModeIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/AODModeScrollUI;->updateSelectedMode(Ljava/lang/String;)V

    return-void
.end method

.method public updateCurrentCamera(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public updateSelectedMode(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 123
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI;->mShowFlag:Z

    .line 124
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI;->mSelectedModeName:Ljava/lang/String;

    return-void
.end method
