.class Lcom/transsion/widgetslib/drawable/OSRadioDrawable$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "OSRadioDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->setAnimParams(IFFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/drawable/OSRadioDrawable;

.field final synthetic val$updateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/drawable/OSRadioDrawable;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 0

    .line 453
    iput-object p1, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable$2;->this$0:Lcom/transsion/widgetslib/drawable/OSRadioDrawable;

    iput-object p2, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable$2;->val$updateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 456
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 457
    iget-object p1, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable$2;->this$0:Lcom/transsion/widgetslib/drawable/OSRadioDrawable;

    invoke-static {p1}, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->access$600(Lcom/transsion/widgetslib/drawable/OSRadioDrawable;)Landroid/animation/ValueAnimator;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable$2;->val$updateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 458
    iget-object p1, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable$2;->this$0:Lcom/transsion/widgetslib/drawable/OSRadioDrawable;

    invoke-static {p1}, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->access$600(Lcom/transsion/widgetslib/drawable/OSRadioDrawable;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 459
    sget-object p1, Lcom/transsion/widgetslib/view/OSRadioButton;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAnimationEnd, mStrokeColor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable$2;->this$0:Lcom/transsion/widgetslib/drawable/OSRadioDrawable;

    invoke-static {v1}, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->access$100(Lcom/transsion/widgetslib/drawable/OSRadioDrawable;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mOuterRadius: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable$2;->this$0:Lcom/transsion/widgetslib/drawable/OSRadioDrawable;

    invoke-static {v1}, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->access$200(Lcom/transsion/widgetslib/drawable/OSRadioDrawable;)F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mInnerRadius: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable$2;->this$0:Lcom/transsion/widgetslib/drawable/OSRadioDrawable;

    .line 460
    invoke-static {v1}, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->access$300(Lcom/transsion/widgetslib/drawable/OSRadioDrawable;)F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mExecFraction: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable$2;->this$0:Lcom/transsion/widgetslib/drawable/OSRadioDrawable;

    invoke-static {v1}, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->access$000(Lcom/transsion/widgetslib/drawable/OSRadioDrawable;)F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", object: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable$2;->this$0:Lcom/transsion/widgetslib/drawable/OSRadioDrawable;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 459
    invoke-static {p1, p0}, Lcom/transsion/widgetscore/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
