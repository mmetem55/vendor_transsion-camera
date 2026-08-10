.class Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ProfessionalModeUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->startHideAnim(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;)V
    .locals 0

    .line 561
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI$1;->this$0:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 564
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 569
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 570
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI$1;->this$0:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->access$500(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;)Lcom/transsion/camera/app/ui/widget/GraduationView;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 571
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI$1;->this$0:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->access$500(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;)Lcom/transsion/camera/app/ui/widget/GraduationView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setY(F)V

    .line 572
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI$1;->this$0:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->access$600(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;)I

    move-result p1

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI$1;->this$0:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->access$700(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 573
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI$1;->this$0:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->access$700(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->access$800(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;IZ)V

    :cond_0
    return-void
.end method
