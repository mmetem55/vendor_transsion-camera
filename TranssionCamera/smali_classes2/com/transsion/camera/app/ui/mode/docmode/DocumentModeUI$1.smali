.class Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI$1;
.super Ljava/lang/Object;
.source "DocumentModeUI.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->hideViewWithAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;)V
    .locals 0

    .line 248
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI$1;->this$0:Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;

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

    .line 256
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI$1;->this$0:Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;

    iget-object p1, p1, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDocBg:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 257
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI$1;->this$0:Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;

    iget-object p1, p1, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDocLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 258
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI$1;->this$0:Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;

    iget-object p1, p1, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDocImage:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 259
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI$1;->this$0:Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDocImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setTranslationY(F)V

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
