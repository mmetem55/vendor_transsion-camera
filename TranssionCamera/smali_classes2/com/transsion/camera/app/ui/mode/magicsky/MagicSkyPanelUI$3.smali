.class Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MagicSkyPanelUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;
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

    .line 340
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI$3;->this$0:Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 343
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 344
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI$3;->this$0:Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->access$000(Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 345
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI$3;->this$0:Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->access$000(Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;)Landroid/view/View;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 351
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 352
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI$3;->this$0:Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->access$000(Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 353
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI$3;->this$0:Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->access$000(Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;)Landroid/view/View;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
