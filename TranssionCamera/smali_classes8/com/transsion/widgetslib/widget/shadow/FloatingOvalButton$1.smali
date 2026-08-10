.class Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton$1;
.super Ljava/lang/Object;
.source "FloatingOvalButton.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;->startPressAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton$1;->this$0:Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton$1;->this$0:Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;->access$002(Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;F)F

    .line 186
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mCurrentScale: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton$1;->this$0:Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;->access$000(Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;)F

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FloatingOvalButton"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton$1;->this$0:Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;->access$100(Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;)Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton$1;->this$0:Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;->access$000(Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 188
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton$1;->this$0:Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;->access$100(Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;)Lcom/transsion/widgetslib/widget/shadow/ShadowLayout;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton$1;->this$0:Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;

    invoke-static {p0}, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;->access$000(Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;)F

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setScaleY(F)V

    return-void
.end method
