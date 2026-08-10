.class Lcom/transsion/widgetslib/widget/OSMaskImageView$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "OSMaskImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/widget/OSMaskImageView;->initPhaseAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/widget/OSMaskImageView;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/widget/OSMaskImageView;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView$5;->this$0:Lcom/transsion/widgetslib/widget/OSMaskImageView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .line 169
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 170
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView$5;->this$0:Lcom/transsion/widgetslib/widget/OSMaskImageView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/transsion/widgetslib/widget/OSMaskImageView;->access$402(Lcom/transsion/widgetslib/widget/OSMaskImageView;Z)Z

    .line 171
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView$5;->this$0:Lcom/transsion/widgetslib/widget/OSMaskImageView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/widgetslib/widget/OSMaskImageView;->access$302(Lcom/transsion/widgetslib/widget/OSMaskImageView;Z)Z

    .line 172
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView$5;->this$0:Lcom/transsion/widgetslib/widget/OSMaskImageView;

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/OSMaskImageView;->access$000(Lcom/transsion/widgetslib/widget/OSMaskImageView;)Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 173
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView$5;->this$0:Lcom/transsion/widgetslib/widget/OSMaskImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 175
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView$5;->this$0:Lcom/transsion/widgetslib/widget/OSMaskImageView;

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/OSMaskImageView;->access$500(Lcom/transsion/widgetslib/widget/OSMaskImageView;)Landroid/animation/AnimatorListenerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 176
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView$5;->this$0:Lcom/transsion/widgetslib/widget/OSMaskImageView;

    invoke-static {p0}, Lcom/transsion/widgetslib/widget/OSMaskImageView;->access$500(Lcom/transsion/widgetslib/widget/OSMaskImageView;)Landroid/animation/AnimatorListenerAdapter;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 152
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 153
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView$5;->this$0:Lcom/transsion/widgetslib/widget/OSMaskImageView;

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/OSMaskImageView;->access$600(Lcom/transsion/widgetslib/widget/OSMaskImageView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView$5;->this$0:Lcom/transsion/widgetslib/widget/OSMaskImageView;

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/OSMaskImageView;->access$600(Lcom/transsion/widgetslib/widget/OSMaskImageView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView$5;->this$0:Lcom/transsion/widgetslib/widget/OSMaskImageView;

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/OSMaskImageView;->access$600(Lcom/transsion/widgetslib/widget/OSMaskImageView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView$5;->this$0:Lcom/transsion/widgetslib/widget/OSMaskImageView;

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/OSMaskImageView;->access$400(Lcom/transsion/widgetslib/widget/OSMaskImageView;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/OSMaskImageView;->setSelected(Z)V

    .line 159
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView$5;->this$0:Lcom/transsion/widgetslib/widget/OSMaskImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 160
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView$5;->this$0:Lcom/transsion/widgetslib/widget/OSMaskImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 162
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView$5;->this$0:Lcom/transsion/widgetslib/widget/OSMaskImageView;

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/OSMaskImageView;->access$500(Lcom/transsion/widgetslib/widget/OSMaskImageView;)Landroid/animation/AnimatorListenerAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 163
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView$5;->this$0:Lcom/transsion/widgetslib/widget/OSMaskImageView;

    invoke-static {p0}, Lcom/transsion/widgetslib/widget/OSMaskImageView;->access$500(Lcom/transsion/widgetslib/widget/OSMaskImageView;)Landroid/animation/AnimatorListenerAdapter;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    :cond_1
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 140
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 141
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView$5;->this$0:Lcom/transsion/widgetslib/widget/OSMaskImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/OSMaskImageView;->setSelected(Z)V

    .line 142
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView$5;->this$0:Lcom/transsion/widgetslib/widget/OSMaskImageView;

    invoke-static {v0, v1}, Lcom/transsion/widgetslib/widget/OSMaskImageView;->access$402(Lcom/transsion/widgetslib/widget/OSMaskImageView;Z)Z

    .line 143
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView$5;->this$0:Lcom/transsion/widgetslib/widget/OSMaskImageView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/transsion/widgetslib/widget/OSMaskImageView;->access$302(Lcom/transsion/widgetslib/widget/OSMaskImageView;Z)Z

    .line 145
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView$5;->this$0:Lcom/transsion/widgetslib/widget/OSMaskImageView;

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/OSMaskImageView;->access$500(Lcom/transsion/widgetslib/widget/OSMaskImageView;)Landroid/animation/AnimatorListenerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 146
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView$5;->this$0:Lcom/transsion/widgetslib/widget/OSMaskImageView;

    invoke-static {p0}, Lcom/transsion/widgetslib/widget/OSMaskImageView;->access$500(Lcom/transsion/widgetslib/widget/OSMaskImageView;)Landroid/animation/AnimatorListenerAdapter;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    :cond_0
    return-void
.end method
