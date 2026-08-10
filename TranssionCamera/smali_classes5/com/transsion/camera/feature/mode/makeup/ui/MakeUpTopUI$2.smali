.class Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MakeUpTopUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->showOrHideAnim(Landroid/animation/ObjectAnimator;Landroid/view/View;ZZ)Landroid/animation/ObjectAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;Landroid/view/View;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$2;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$2;->val$view:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 239
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$2;->val$view:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 240
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$2;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->access$000(Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 233
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$2;->val$view:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 234
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$2;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->access$000(Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;)V

    return-void
.end method
