.class Lcom/transsion/widgetslib/view/damping/DampingLayout$8;
.super Ljava/lang/Object;
.source "DampingLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/view/damping/DampingLayout;->initAnimScrollBarFade()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/view/damping/DampingLayout;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/view/damping/DampingLayout;)V
    .locals 0

    .line 467
    iput-object p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout$8;->this$0:Lcom/transsion/widgetslib/view/damping/DampingLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 470
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout$8;->this$0:Lcom/transsion/widgetslib/view/damping/DampingLayout;

    invoke-static {v0}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->access$500(Lcom/transsion/widgetslib/view/damping/DampingLayout;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 474
    :cond_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    .line 475
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_1

    .line 476
    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout$8;->this$0:Lcom/transsion/widgetslib/view/damping/DampingLayout;

    invoke-static {p0}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->access$500(Lcom/transsion/widgetslib/view/damping/DampingLayout;)Landroid/view/View;

    move-result-object p0

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    return-void
.end method
