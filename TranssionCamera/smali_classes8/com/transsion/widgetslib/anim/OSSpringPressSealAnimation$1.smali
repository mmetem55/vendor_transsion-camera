.class Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$1;
.super Ljava/lang/Object;
.source "OSSpringPressSealAnimation.java"

# interfaces
.implements Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->createStartAnimation(FF)Landroidx/dynamicanimation/animation/SpringAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$1;->this$0:Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$1;->this$0:Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;

    invoke-static {v0}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->access$1400(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$1;->this$0:Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;

    invoke-static {v0}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->access$1400(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$1;->this$0:Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;

    invoke-static {v0}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->access$1400(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 92
    invoke-virtual {v0, p2}, Landroid/view/View;->setScaleX(F)V

    .line 93
    invoke-virtual {v0, p2}, Landroid/view/View;->setScaleY(F)V

    .line 94
    iget-object v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$1;->this$0:Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;

    invoke-static {v0}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->access$1500(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;)Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$OnAnimationUpdateListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 95
    iget-object p0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$1;->this$0:Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;

    invoke-static {p0}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->access$1500(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;)Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$OnAnimationUpdateListener;

    move-result-object p0

    const/4 v0, 0x1

    invoke-interface {p0, v0, p1, p2, p3}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$OnAnimationUpdateListener;->onAnimationUpdate(ZLandroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    .line 86
    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 87
    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    :cond_3
    return-void
.end method
