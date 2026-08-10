.class Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;
.super Ljava/lang/Object;
.source "AbstractTopBarUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$IAnimationStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/AbstractTopBarUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyAnimationStrategy"
.end annotation


# instance fields
.field private mBackgroundAnimator:Landroid/animation/AnimatorSet;

.field private mChildAnimators:[Landroid/animation/AnimatorSet;

.field private mPathInterpolator:Landroid/view/animation/PathInterpolator;

.field private mPopInterpolator:Landroid/view/animation/PathInterpolator;

.field private mPopInterpolator2:Landroid/view/animation/PathInterpolator;

.field private mStartPosition:I

.field final synthetic this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)V
    .locals 4

    .line 453
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 445
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const/high16 v0, 0x3e800000    # 0.25f

    const v1, 0x3dcccccd    # 0.1f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p1, v0, v1, v0, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 446
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const v0, 0x3ecccccd    # 0.4f

    const/4 v1, 0x0

    const v3, 0x3e4ccccd    # 0.2f

    invoke-direct {p1, v0, v1, v3, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->mPopInterpolator:Landroid/view/animation/PathInterpolator;

    .line 447
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const v0, 0x3ea8f5c3    # 0.33f

    const v3, 0x3f28f5c3    # 0.66f

    invoke-direct {p1, v0, v1, v3, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->mPopInterpolator2:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method private calculateIntervalTranslate()I
    .locals 3

    .line 471
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 472
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    iget-object v1, v1, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070764

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v2, 0x1

    if-gt v0, v2, :cond_0

    const/4 p0, 0x0

    return p0

    .line 476
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->access$300(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)I

    move-result p0

    sub-int/2addr p0, v1

    int-to-float p0, p0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr p0, v1

    float-to-int p0, p0

    sub-int/2addr v0, v2

    div-int/2addr p0, v0

    return p0
.end method

.method private handleChildViewAnimationImpl(Landroid/view/View;IZIILandroid/animation/Animator$AnimatorListener;II)Landroid/animation/AnimatorSet;
    .locals 11

    move-object/from16 v0, p6

    .line 500
    new-instance v10, Landroid/animation/AnimatorSet;

    invoke-direct {v10}, Landroid/animation/AnimatorSet;-><init>()V

    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move v4, p2

    move-object v5, v10

    move/from16 v6, p7

    move/from16 v7, p8

    move v8, p4

    move/from16 v9, p5

    .line 501
    invoke-direct/range {v1 .. v9}, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->initPopupAnim(Landroid/view/View;ZILandroid/animation/AnimatorSet;IIII)V

    .line 503
    new-instance v1, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy$1;

    move-object v2, p0

    invoke-direct {v1, p0, v0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy$1;-><init>(Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v10, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 522
    invoke-interface {v0, v1}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    .line 525
    :cond_0
    invoke-virtual {v10}, Landroid/animation/AnimatorSet;->start()V

    return-object v10
.end method

.method private handleChildViewsAnimation(Landroid/view/ViewGroup;IZIILandroid/animation/Animator$AnimatorListener;)V
    .locals 14

    move-object v9, p0

    move-object v10, p1

    if-nez v10, :cond_0

    return-void

    .line 485
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v11

    const/4 v0, 0x1

    if-ge v11, v0, :cond_1

    return-void

    .line 489
    :cond_1
    new-array v0, v11, [Landroid/animation/AnimatorSet;

    iput-object v0, v9, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->mChildAnimators:[Landroid/animation/AnimatorSet;

    const/4 v0, 0x0

    move v12, v0

    :goto_0
    if-ge v12, v11, :cond_2

    .line 491
    invoke-virtual {p1, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 493
    iget-object v13, v9, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->mChildAnimators:[Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->calculateIntervalTranslate()I

    move-result v2

    move-object v0, p0

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move v7, v12

    move v8, v11

    invoke-direct/range {v0 .. v8}, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->handleChildViewAnimationImpl(Landroid/view/View;IZIILandroid/animation/Animator$AnimatorListener;II)Landroid/animation/AnimatorSet;

    move-result-object v0

    aput-object v0, v13, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private initPopupAnim(Landroid/view/View;ZILandroid/animation/AnimatorSet;IIII)V
    .locals 5

    .line 534
    iget p6, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->mStartPosition:I

    mul-int/2addr p3, p6

    .line 537
    iget-object p6, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-static {p6}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->access$400(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;

    move-result-object p6

    const-string p7, "1"

    invoke-virtual {p6, p7, p5}, Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;->getChikdrenLeft(Ljava/lang/String;I)I

    move-result p6

    .line 538
    iget-object p7, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    iget-object p7, p7, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarContainer:Landroid/view/ViewGroup;

    invoke-virtual {p7}, Landroid/view/ViewGroup;->getWidth()I

    move-result p7

    iget-object p8, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-static {p8}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->access$500(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)Landroid/content/Context;

    move-result-object p8

    invoke-virtual {p8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p8

    const v0, 0x7f07075c

    invoke-virtual {p8, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p8

    sub-int/2addr p7, p8

    const/4 p8, 0x2

    div-int/2addr p7, p8

    const/4 v0, 0x0

    if-nez p2, :cond_0

    sub-int/2addr p3, p7

    sub-int/2addr p3, p6

    .line 541
    iget-object p6, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    iget-object p6, p6, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarContainer:Landroid/view/ViewGroup;

    invoke-virtual {p6}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result p6

    add-int/2addr p3, p6

    int-to-float p3, p3

    move p6, v0

    goto :goto_0

    :cond_0
    sub-int/2addr p3, p7

    sub-int/2addr p3, p6

    .line 545
    iget-object p6, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    iget-object p6, p6, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarContainer:Landroid/view/ViewGroup;

    invoke-virtual {p6}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result p6

    add-int/2addr p3, p6

    int-to-float p3, p3

    move p6, p3

    move p3, v0

    .line 548
    :goto_0
    invoke-static {}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->access$600()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tartTranslationValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "  endTranslationValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p7, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/high16 p7, 0x3f800000    # 1.0f

    if-eqz p2, :cond_1

    move v1, p7

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    if-eqz p2, :cond_2

    move v2, v0

    goto :goto_2

    :cond_2
    move v2, p7

    :goto_2
    new-array v3, p8, [F

    const/4 v4, 0x0

    aput p3, v3, v4

    const/4 p3, 0x1

    aput p6, v3, p3

    const-string p6, "translationX"

    .line 551
    invoke-static {p1, p6, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p6

    new-array p8, p8, [F

    aput v1, p8, v4

    aput v2, p8, p3

    const-string p3, "alpha"

    .line 552
    invoke-static {p1, p3, p8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    const-wide/16 v1, 0x1

    if-eqz p2, :cond_3

    move-wide v3, v1

    goto :goto_3

    :cond_3
    const-wide/16 v3, 0x32

    .line 553
    :goto_3
    invoke-virtual {p3, v3, v4}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    const-wide/16 v3, 0x96

    .line 554
    invoke-virtual {p3, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 555
    iget-object p8, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->mPopInterpolator2:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p3, p8}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 556
    iget-object p8, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->mPopInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p6, p8}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v3, 0x15e

    .line 557
    invoke-virtual {p6, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    if-nez p2, :cond_4

    .line 560
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_4

    .line 562
    :cond_4
    invoke-virtual {p1, p7}, Landroid/view/View;->setAlpha(F)V

    .line 563
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->getItemSelectPosition()I

    move-result p0

    if-ne p0, p5, :cond_5

    .line 564
    invoke-virtual {p3, v3, v4}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 565
    invoke-virtual {p3, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 568
    :cond_5
    :goto_4
    invoke-virtual {p4, p6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-void
.end method


# virtual methods
.method public cancelAnimation(Landroid/view/ViewGroup;Landroid/view/View;Z)V
    .locals 3

    .line 604
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->mBackgroundAnimator:Landroid/animation/AnimatorSet;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 605
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->mBackgroundAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 606
    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->mBackgroundAnimator:Landroid/animation/AnimatorSet;

    .line 608
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->mChildAnimators:[Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_3

    array-length p1, p1

    if-lez p1, :cond_3

    const/4 p1, 0x0

    .line 609
    :goto_0
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->mChildAnimators:[Landroid/animation/AnimatorSet;

    array-length v2, v1

    if-ge p1, v2, :cond_2

    .line 610
    aget-object v1, v1, p1

    if-eqz v1, :cond_1

    .line 611
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 612
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 615
    :cond_2
    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->mChildAnimators:[Landroid/animation/AnimatorSet;

    :cond_3
    if-eqz p2, :cond_4

    if-eqz p3, :cond_4

    const/4 p0, 0x0

    .line 618
    invoke-virtual {p2, p0}, Landroid/view/View;->setTranslationY(F)V

    const/high16 p0, 0x3f800000    # 1.0f

    .line 619
    invoke-virtual {p2, p0}, Landroid/view/View;->setAlpha(F)V

    :cond_4
    return-void
.end method

.method public isAnimationRunning()Z
    .locals 7

    .line 589
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->mBackgroundAnimator:Landroid/animation/AnimatorSet;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 592
    :goto_0
    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->mChildAnimators:[Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_3

    array-length v3, v3

    if-lez v3, :cond_3

    move v3, v2

    move v4, v3

    .line 593
    :goto_1
    iget-object v5, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->mChildAnimators:[Landroid/animation/AnimatorSet;

    array-length v6, v5

    if-ge v3, v6, :cond_2

    .line 594
    aget-object v5, v5, v3

    if-eqz v5, :cond_1

    .line 595
    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v1

    goto :goto_2

    :cond_1
    move v5, v2

    :goto_2
    or-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    move v2, v4

    :cond_3
    or-int p0, v0, v2

    return p0
.end method

.method public startPopupAnimation(Landroid/view/ViewGroup;Landroid/view/View;ZIILandroid/animation/Animator$AnimatorListener;)V
    .locals 7

    const/16 v0, 0x8

    .line 460
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 461
    iput p4, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->mStartPosition:I

    .line 462
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    iget v5, p2, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mOrientation:I

    const/16 v2, 0x28

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->handleChildViewsAnimation(Landroid/view/ViewGroup;IZIILandroid/animation/Animator$AnimatorListener;)V

    return-void
.end method
