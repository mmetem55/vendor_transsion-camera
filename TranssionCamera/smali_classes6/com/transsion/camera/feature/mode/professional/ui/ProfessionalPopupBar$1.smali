.class Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ProfessionalPopupBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->startHideAnim(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;)V
    .locals 0

    .line 241
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar$1;->this$0:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 244
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 249
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 250
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar$1;->this$0:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->access$000(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;)Landroid/view/ViewGroup;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 251
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar$1;->this$0:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->access$000(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 252
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar$1;->this$0:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->access$000(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;)Landroid/view/ViewGroup;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 253
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar$1;->this$0:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->access$000(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;)Landroid/view/ViewGroup;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setY(F)V

    :cond_0
    return-void
.end method
