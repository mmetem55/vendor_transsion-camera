.class Lcom/transsion/camera/app/ui/AODModeScrollUI$2;
.super Lcom/transsion/camera/app/ui/AODModeScrollUI$ModeViewAnimatorListener;
.source "AODModeScrollUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/AODModeScrollUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/AODModeScrollUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/AODModeScrollUI;)V
    .locals 0

    .line 261
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI$2;->this$0:Lcom/transsion/camera/app/ui/AODModeScrollUI;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AODModeScrollUI$ModeViewAnimatorListener;-><init>(Lcom/transsion/camera/app/ui/AODModeScrollUI$1;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 264
    invoke-static {}, Lcom/transsion/camera/app/ui/AODModeScrollUI;->access$600()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v0, "scrollUIAnimator slideMode finish"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 265
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI$2;->this$0:Lcom/transsion/camera/app/ui/AODModeScrollUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AODModeScrollUI;->access$1300(Lcom/transsion/camera/app/ui/AODModeScrollUI;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 266
    invoke-static {}, Lcom/transsion/camera/app/ui/AODModeScrollUI;->access$600()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v0, "scrollUIAnimator slideMode finish startPendingFadeAnimator"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 267
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI$2;->this$0:Lcom/transsion/camera/app/ui/AODModeScrollUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AODModeScrollUI;->access$1400(Lcom/transsion/camera/app/ui/AODModeScrollUI;)Landroid/animation/AnimatorSet;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 268
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI$2;->this$0:Lcom/transsion/camera/app/ui/AODModeScrollUI;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/AODModeScrollUI;->access$1302(Lcom/transsion/camera/app/ui/AODModeScrollUI;Z)Z

    :cond_0
    return-void
.end method
