.class Lcom/transsion/camera/app/ui/ModePanelUI$1;
.super Ljava/lang/Object;
.source "ModePanelUI.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/ModePanelUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/ModePanelUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/ModePanelUI;)V
    .locals 0

    .line 384
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModePanelUI$1;->this$0:Lcom/transsion/camera/app/ui/ModePanelUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 391
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePanelUI$1;->this$0:Lcom/transsion/camera/app/ui/ModePanelUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/ModePanelUI;->access$900(Lcom/transsion/camera/app/ui/ModePanelUI;)Landroid/view/ViewGroup;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 392
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePanelUI$1;->this$0:Lcom/transsion/camera/app/ui/ModePanelUI;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/ModePanelUI;->access$1002(Lcom/transsion/camera/app/ui/ModePanelUI;Z)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
