.class final Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;
.super Ljava/lang/Object;
.source "TemplateUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RotateAnimator"
.end annotation


# instance fields
.field private mAnimator:Landroid/animation/ObjectAnimator;

.field private mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mFromOrientation:I

.field private final mToOrientation:I

.field private final mView:Landroid/view/View;

.field final synthetic this$0:Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;IILandroid/view/View;)V
    .locals 0

    .line 702
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;->this$0:Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 703
    iput p2, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;->mFromOrientation:I

    .line 704
    iput p3, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;->mToOrientation:I

    .line 705
    iput-object p4, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;->mView:Landroid/view/View;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;IILandroid/view/View;Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$1;)V
    .locals 0

    .line 689
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;-><init>(Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;IILandroid/view/View;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;)Landroid/animation/Animator$AnimatorListener;
    .locals 0

    .line 689
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;)V
    .locals 0

    .line 689
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;->updateLayout()V

    return-void
.end method

.method static synthetic access$1200(Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;)V
    .locals 0

    .line 689
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;->animateShow()V

    return-void
.end method

.method static synthetic access$1400(Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;Landroid/animation/Animator$AnimatorListener;)V
    .locals 0

    .line 689
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;)V
    .locals 0

    .line 689
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;->start()V

    return-void
.end method

.method static synthetic access$1600(Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;)I
    .locals 0

    .line 689
    iget p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;->mToOrientation:I

    return p0
.end method

.method static synthetic access$1700(Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;)V
    .locals 0

    .line 689
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;->cancel()V

    return-void
.end method

.method static synthetic access$1802(Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;I)I
    .locals 0

    .line 689
    iput p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;->mFromOrientation:I

    return p1
.end method

.method private animateHide()V
    .locals 6

    .line 761
    invoke-static {}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->access$800()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "animateHide"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v1, v0, [F

    const v2, 0x3dcccccd    # 0.1f

    const/4 v3, 0x0

    aput v2, v1, v3

    const-string v2, "alpha"

    .line 763
    invoke-static {v2, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    const/4 v2, 0x2

    new-array v4, v2, [F

    const/4 v5, 0x0

    aput v5, v4, v3

    .line 765
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;->calculateRotation()I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v0

    const-string v5, "rotation"

    invoke-static {v5, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 766
    iget-object v5, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;->mView:Landroid/view/View;

    new-array v2, v2, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v2, v3

    aput-object v4, v2, v0

    .line 767
    invoke-static {v5, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;->mAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x96

    .line 769
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 770
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;->mAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;->this$0:Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->access$900(Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;)Landroid/view/animation/PathInterpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 771
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;->mAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator$1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator$1;-><init>(Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 788
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private animateShow()V
    .locals 6

    .line 797
    invoke-static {}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->access$800()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "animateShow"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v1, v0, [F

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    aput v2, v1, v3

    const-string v2, "alpha"

    .line 799
    invoke-static {v2, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    const/4 v2, 0x2

    new-array v4, v2, [F

    .line 801
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;->calculateRotation()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    aput v5, v4, v3

    const/4 v5, 0x0

    aput v5, v4, v0

    const-string v5, "rotation"

    invoke-static {v5, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 802
    iget-object v5, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;->mView:Landroid/view/View;

    new-array v2, v2, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v2, v3

    aput-object v4, v2, v0

    .line 803
    invoke-static {v5, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;->mAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x96

    .line 805
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 806
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;->mAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;->this$0:Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->access$900(Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;)Landroid/view/animation/PathInterpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 807
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;->mAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator$2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator$2;-><init>(Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 825
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private calculateRotation()I
    .locals 5

    .line 729
    iget v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;->mFromOrientation:I

    const/16 v1, 0x2d

    const/16 v2, -0x2d

    const/16 v3, 0x10e

    const/16 v4, 0x5a

    if-eqz v0, :cond_4

    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_0

    goto :goto_1

    .line 747
    :cond_0
    iget p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;->mToOrientation:I

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    if-ne v4, p0, :cond_6

    const/16 v1, -0x5a

    goto :goto_2

    .line 739
    :cond_2
    iget p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;->mToOrientation:I

    if-nez p0, :cond_3

    goto :goto_2

    :cond_3
    if-ne v3, p0, :cond_6

    move v1, v4

    goto :goto_2

    .line 731
    :cond_4
    iget p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;->mToOrientation:I

    if-ne v4, p0, :cond_5

    :goto_0
    move v1, v2

    goto :goto_2

    :cond_5
    if-ne v3, p0, :cond_6

    goto :goto_2

    :cond_6
    :goto_1
    const/4 v1, 0x0

    :goto_2
    return v1
.end method

.method private cancel()V
    .locals 1

    .line 719
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;->mAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 720
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 721
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    .line 722
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    const/4 v0, 0x0

    .line 723
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;->mAnimator:Landroid/animation/ObjectAnimator;

    :cond_0
    return-void
.end method

.method private setListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 0

    .line 709
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    return-void
.end method

.method private start()V
    .locals 3

    .line 713
    invoke-static {}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->access$800()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start mFromOrientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;->mFromOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mToOrientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;->mToOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 715
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;->animateHide()V

    return-void
.end method

.method private updateLayout()V
    .locals 1

    .line 792
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;->this$0:Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->stopPlay()V

    .line 793
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;->this$0:Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;

    iget p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;->mToOrientation:I

    invoke-static {v0, p0}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->access$1300(Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;I)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 830
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RotateAnimator{mFromOrientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;->mFromOrientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mToOrientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;->mToOrientation:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
