.class Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI$11;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MagicSkyPanelUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->startSkyRootAnimation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;)V
    .locals 0

    .line 796
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI$11;->this$0:Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .line 799
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 800
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI$11;->this$0:Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->access$800(Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;Z)V

    .line 801
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI$11;->this$0:Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->access$900(Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;)Landroid/widget/FrameLayout;

    move-result-object p0

    new-array p1, v0, [F

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, p1, v0

    const-string v0, "alpha"

    invoke-static {p0, v0, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v2, 0xc8

    invoke-virtual {p0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 802
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const v0, 0x3ea8f5c3    # 0.33f

    const/4 v2, 0x0

    const v3, 0x3f28f5c3    # 0.66f

    invoke-direct {p1, v0, v2, v3, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 803
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method
