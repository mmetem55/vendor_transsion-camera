.class Lcom/transsion/camera/app/ui/AODModeScrollUI$1;
.super Lcom/transsion/camera/app/ui/AODModeScrollUI$ModeViewAnimatorListener;
.source "AODModeScrollUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/AODModeScrollUI;->hide(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/AODModeScrollUI;

.field final synthetic val$withAnim:Z


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/AODModeScrollUI;Z)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI$1;->this$0:Lcom/transsion/camera/app/ui/AODModeScrollUI;

    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI$1;->val$withAnim:Z

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AODModeScrollUI$ModeViewAnimatorListener;-><init>(Lcom/transsion/camera/app/ui/AODModeScrollUI$1;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 150
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI$1;->val$withAnim:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI$1;->this$0:Lcom/transsion/camera/app/ui/AODModeScrollUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AODModeScrollUI;->access$500(Lcom/transsion/camera/app/ui/AODModeScrollUI;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 151
    :cond_0
    invoke-static {}, Lcom/transsion/camera/app/ui/AODModeScrollUI;->access$600()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v0, "scrollUIAnimator hide animator finished,hide the view"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 152
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI$1;->this$0:Lcom/transsion/camera/app/ui/AODModeScrollUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AODModeScrollUI;->access$700(Lcom/transsion/camera/app/ui/AODModeScrollUI;)Landroid/view/View;

    move-result-object p0

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method
