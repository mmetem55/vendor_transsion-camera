.class Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI$2;
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

    .line 329
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI$2;->this$0:Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 332
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 333
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI$2;->this$0:Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->access$000(Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 334
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI$2;->this$0:Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->access$100(Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 335
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI$2;->this$0:Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->access$000(Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;)Landroid/view/View;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
