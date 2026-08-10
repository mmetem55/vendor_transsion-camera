.class Lcom/transsion/camera/app/ui/ModeVerticalScroll$2;
.super Lcom/transsion/camera/app/ui/ModeVerticalScroll$SupperAnimatorListener;
.source "ModeVerticalScroll.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/ModeVerticalScroll;->startShrinkingAnimation(Lcom/transsion/camera/app/ui/scroll/IScrollOperation$AnimationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/ModeVerticalScroll;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/ModeVerticalScroll;)V
    .locals 0

    .line 347
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll$2;->this$0:Lcom/transsion/camera/app/ui/ModeVerticalScroll;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ModeVerticalScroll$SupperAnimatorListener;-><init>(Lcom/transsion/camera/app/ui/ModeVerticalScroll$1;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 350
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll$2;->this$0:Lcom/transsion/camera/app/ui/ModeVerticalScroll;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->access$200(Lcom/transsion/camera/app/ui/ModeVerticalScroll;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 351
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll$2;->this$0:Lcom/transsion/camera/app/ui/ModeVerticalScroll;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->access$200(Lcom/transsion/camera/app/ui/ModeVerticalScroll;)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 352
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll$2;->this$0:Lcom/transsion/camera/app/ui/ModeVerticalScroll;

    const/high16 p1, 0x3f800000    # 1.0f

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->access$300(Lcom/transsion/camera/app/ui/ModeVerticalScroll;FZ)V

    :cond_0
    return-void
.end method
