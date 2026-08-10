.class Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;
.super Ljava/lang/Object;
.source "AODExitUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/AODExitUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DragHelper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/AODExitUI$DragHelper$Orientation270;,
        Lcom/transsion/camera/app/ui/AODExitUI$DragHelper$Orientation180;,
        Lcom/transsion/camera/app/ui/AODExitUI$DragHelper$Orientation90;,
        Lcom/transsion/camera/app/ui/AODExitUI$DragHelper$Orientation0;,
        Lcom/transsion/camera/app/ui/AODExitUI$DragHelper$AbstractOrientation;,
        Lcom/transsion/camera/app/ui/AODExitUI$DragHelper$OrientationRepo;
    }
.end annotation


# instance fields
.field private final FILTER_THRESHOLD:I

.field private mCurrentOrientation:Lcom/transsion/camera/app/ui/AODExitUI$DragHelper$AbstractOrientation;

.field private mDisappearAnimator:Landroid/animation/Animator;

.field private mDragDistance:F

.field private final mDragThreshold:F

.field private mDragging:Z

.field private mFirstFilter:Z

.field private final mInterpolator:Landroid/view/animation/PathInterpolator;

.field private final mOrientationRepo:Lcom/transsion/camera/app/ui/AODExitUI$DragHelper$OrientationRepo;

.field private mSpringBackAnimator:Landroid/animation/Animator;

.field final synthetic this$0:Lcom/transsion/camera/app/ui/AODExitUI;


# direct methods
.method public static synthetic $r8$lambda$hL-OfuMOPQMKSxHVi3_N_Shuy-Q(Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;->lambda$springBack$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private constructor <init>(Lcom/transsion/camera/app/ui/AODExitUI;Landroid/content/Context;)V
    .locals 4

    .line 416
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;->this$0:Lcom/transsion/camera/app/ui/AODExitUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const v0, 0x3ea8f5c3    # 0.33f

    const/4 v1, 0x0

    const v2, 0x3f28f5c3    # 0.66f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {p1, v0, v1, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;->mInterpolator:Landroid/view/animation/PathInterpolator;

    .line 417
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070191

    .line 418
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;->mDragThreshold:F

    .line 419
    invoke-static {p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;->FILTER_THRESHOLD:I

    .line 420
    new-instance p1, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper$OrientationRepo;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper$OrientationRepo;-><init>(Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;Lcom/transsion/camera/app/ui/AODExitUI$1;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;->mOrientationRepo:Lcom/transsion/camera/app/ui/AODExitUI$DragHelper$OrientationRepo;

    const/4 p1, 0x0

    .line 421
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;->updateOrientation(I)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/AODExitUI;Landroid/content/Context;Lcom/transsion/camera/app/ui/AODExitUI$1;)V
    .locals 0

    .line 226
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;-><init>(Lcom/transsion/camera/app/ui/AODExitUI;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;)Lcom/transsion/camera/app/ui/AODExitUI$DragHelper$AbstractOrientation;
    .locals 0

    .line 226
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;->mCurrentOrientation:Lcom/transsion/camera/app/ui/AODExitUI$DragHelper$AbstractOrientation;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;Lcom/transsion/camera/app/ui/AODExitUI$DragHelper$AbstractOrientation;)Lcom/transsion/camera/app/ui/AODExitUI$DragHelper$AbstractOrientation;
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;->mCurrentOrientation:Lcom/transsion/camera/app/ui/AODExitUI$DragHelper$AbstractOrientation;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;F)F
    .locals 0

    .line 226
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;->filterDistance(F)F

    move-result p0

    return p0
.end method

.method static synthetic access$1400(Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;)F
    .locals 0

    .line 226
    iget p0, p0, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;->mDragDistance:F

    return p0
.end method

.method static synthetic access$1402(Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;F)F
    .locals 0

    .line 226
    iput p1, p0, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;->mDragDistance:F

    return p1
.end method

.method static synthetic access$1416(Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;F)F
    .locals 1

    .line 226
    iget v0, p0, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;->mDragDistance:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;->mDragDistance:F

    return v0
.end method

.method static synthetic access$1424(Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;F)F
    .locals 1

    .line 226
    iget v0, p0, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;->mDragDistance:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;->mDragDistance:F

    return v0
.end method

.method static synthetic access$1500(Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;)F
    .locals 0

    .line 226
    iget p0, p0, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;->mDragThreshold:F

    return p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;I)V
    .locals 0

    .line 226
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;->updateOrientation(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;)I
    .locals 0

    .line 226
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;->currentOrientation()I

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;)Z
    .locals 0

    .line 226
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;->mDragging:Z

    return p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;FF)Z
    .locals 0

    .line 226
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;->drag(FF)Z

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;)V
    .locals 0

    .line 226
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;->startDrag()V

    return-void
.end method

.method static synthetic access$900(Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;Z)V
    .locals 0

    .line 226
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;->stopDrag(Z)V

    return-void
.end method

.method private currentOrientation()I
    .locals 0

    .line 429
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;->mCurrentOrientation:Lcom/transsion/camera/app/ui/AODExitUI$DragHelper$AbstractOrientation;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper$AbstractOrientation;->access$1800(Lcom/transsion/camera/app/ui/AODExitUI$DragHelper$AbstractOrientation;)I

    move-result p0

    return p0
.end method

.method private dismissExitTipsIfNeeded()V
    .locals 3

    .line 482
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;->this$0:Lcom/transsion/camera/app/ui/AODExitUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AODExitUI;->access$2100(Lcom/transsion/camera/app/ui/AODExitUI;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;->mDisappearAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 483
    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 484
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;->this$0:Lcom/transsion/camera/app/ui/AODExitUI;

    .line 485
    invoke-static {v0}, Lcom/transsion/camera/app/ui/AODExitUI;->access$2100(Lcom/transsion/camera/app/ui/AODExitUI;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const-string v2, "alpha"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;->mDisappearAnimator:Landroid/animation/Animator;

    const-wide/16 v1, 0x96

    .line 486
    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 487
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;->mDisappearAnimator:Landroid/animation/Animator;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;->mInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 488
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;->mDisappearAnimator:Landroid/animation/Animator;

    new-instance v1, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper$1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper$1;-><init>(Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 507
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;->mDisappearAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    :cond_1
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private drag(FF)Z
    .locals 1

    .line 443
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;->mCurrentOrientation:Lcom/transsion/camera/app/ui/AODExitUI$DragHelper$AbstractOrientation;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper$AbstractOrientation;->drag(FF)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 445
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;->this$0:Lcom/transsion/camera/app/ui/AODExitUI;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/AODExitUI;->access$1900(Lcom/transsion/camera/app/ui/AODExitUI;)Lcom/transsion/camera/app/ui/widget/DragIndicator;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/transsion/camera/app/ui/widget/DragIndicator;->setPressed(Z)V

    .line 446
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;->dismissExitTipsIfNeeded()V

    .line 448
    :cond_0
    iget p2, p0, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;->mDragDistance:F

    invoke-direct {p0, p2}, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;->updateViewByDragDistance(F)V

    return p1
.end method

.method private filterDistance(F)F
    .locals 1

    .line 454
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;->mFirstFilter:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 455
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;->mFirstFilter:Z

    const/high16 v0, 0x40400000    # 3.0f

    .line 456
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;->filterDistance(FF)F

    move-result p0

    goto :goto_0

    .line 458
    :cond_0
    iget v0, p0, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;->FILTER_THRESHOLD:I

    int-to-float v0, v0

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;->filterDistance(FF)F

    move-result p0

    :goto_0
    return p0
.end method

.method private filterDistance(FF)F
    .locals 1

    .line 464
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpl-float v0, p0, p2

    if-lez v0, :cond_0

    div-float/2addr p1, p0

    mul-float/2addr p1, p2

    :cond_0
    return p1
.end method

.method private synthetic lambda$springBack$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 532
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;->updateViewByDragDistance(F)V

    return-void
.end method

.method private springBack()V
    .locals 9

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 528
    iget v2, p0, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;->mDragDistance:F

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x0

    const/4 v4, 0x1

    aput v2, v1, v4

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v5, 0x96

    .line 529
    invoke-virtual {v1, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 530
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;->mInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 531
    new-instance v2, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 534
    new-instance v2, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper$2;

    invoke-direct {v2, p0}, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper$2;-><init>(Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 548
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;->mDisappearAnimator:Landroid/animation/Animator;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/animation/Animator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 549
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;->mDisappearAnimator:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->cancel()V

    .line 552
    :cond_0
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;->this$0:Lcom/transsion/camera/app/ui/AODExitUI;

    .line 553
    invoke-static {v2}, Lcom/transsion/camera/app/ui/AODExitUI;->access$2100(Lcom/transsion/camera/app/ui/AODExitUI;)Landroid/widget/TextView;

    move-result-object v2

    new-array v7, v0, [F

    iget-object v8, p0, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;->this$0:Lcom/transsion/camera/app/ui/AODExitUI;

    invoke-static {v8}, Lcom/transsion/camera/app/ui/AODExitUI;->access$2100(Lcom/transsion/camera/app/ui/AODExitUI;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getAlpha()F

    move-result v8

    aput v8, v7, v3

    const/high16 v8, 0x3f800000    # 1.0f

    aput v8, v7, v4

    const-string v8, "alpha"

    invoke-static {v2, v8, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 554
    invoke-virtual {v2, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 555
    iget-object v5, p0, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;->mInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v2, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 556
    new-instance v5, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper$3;

    invoke-direct {v5, p0}, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper$3;-><init>(Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;)V

    invoke-virtual {v2, v5}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 564
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v0, v0, [Landroid/animation/Animator;

    aput-object v1, v0, v3

    aput-object v2, v0, v4

    .line 565
    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 566
    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    .line 567
    iput-object v5, p0, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;->mSpringBackAnimator:Landroid/animation/Animator;

    return-void
.end method

.method private startDrag()V
    .locals 2

    .line 433
    invoke-static {}, Lcom/transsion/camera/app/ui/AODExitUI;->access$1000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "startDrag"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 434
    iput v0, p0, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;->mDragDistance:F

    const/4 v0, 0x1

    .line 435
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;->mDragging:Z

    .line 436
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;->mFirstFilter:Z

    .line 437
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;->mSpringBackAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 438
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;->mSpringBackAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->end()V

    :cond_0
    return-void
.end method

.method private stopDrag(Z)V
    .locals 3

    .line 512
    invoke-static {}, Lcom/transsion/camera/app/ui/AODExitUI;->access$1000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopDrag cancel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 513
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;->mDragging:Z

    .line 514
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;->mFirstFilter:Z

    if-eqz p1, :cond_0

    .line 516
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;->this$0:Lcom/transsion/camera/app/ui/AODExitUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AODExitUI;->access$1900(Lcom/transsion/camera/app/ui/AODExitUI;)Lcom/transsion/camera/app/ui/widget/DragIndicator;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/widget/DragIndicator;->setPressed(Z)V

    const/4 p1, 0x0

    .line 517
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;->updateViewByDragDistance(F)V

    return-void

    .line 520
    :cond_0
    iget p1, p0, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;->mDragDistance:F

    iget v0, p0, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;->mDragThreshold:F

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_1

    .line 521
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;->this$0:Lcom/transsion/camera/app/ui/AODExitUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AODExitUI;->access$2200(Lcom/transsion/camera/app/ui/AODExitUI;)V

    goto :goto_0

    .line 523
    :cond_1
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;->springBack()V

    :goto_0
    return-void
.end method

.method private updateOrientation(I)V
    .locals 0

    .line 425
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;->mOrientationRepo:Lcom/transsion/camera/app/ui/AODExitUI$DragHelper$OrientationRepo;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper$OrientationRepo;->access$1700(Lcom/transsion/camera/app/ui/AODExitUI$DragHelper$OrientationRepo;I)Lcom/transsion/camera/app/ui/AODExitUI$DragHelper$AbstractOrientation;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper$AbstractOrientation;->entry()V

    return-void
.end method

.method private updateViewByDragDistance(F)V
    .locals 2

    .line 477
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;->mCurrentOrientation:Lcom/transsion/camera/app/ui/AODExitUI$DragHelper$AbstractOrientation;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;->this$0:Lcom/transsion/camera/app/ui/AODExitUI;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/AODExitUI;->access$2000(Lcom/transsion/camera/app/ui/AODExitUI;)Lcom/transsion/camera/app/ui/widget/RotateLayout;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper$AbstractOrientation;->updateTranslation(Landroid/view/View;F)V

    .line 478
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;->this$0:Lcom/transsion/camera/app/ui/AODExitUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AODExitUI;->access$1900(Lcom/transsion/camera/app/ui/AODExitUI;)Lcom/transsion/camera/app/ui/widget/DragIndicator;

    move-result-object v0

    iget p0, p0, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;->mDragThreshold:F

    div-float/2addr p1, p0

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/widget/DragIndicator;->updateProgress(F)V

    return-void
.end method
