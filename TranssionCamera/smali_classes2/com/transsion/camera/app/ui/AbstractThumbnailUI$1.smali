.class Lcom/transsion/camera/app/ui/AbstractThumbnailUI$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AbstractThumbnailUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->startAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/AbstractThumbnailUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/AbstractThumbnailUI;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$1;->this$0:Lcom/transsion/camera/app/ui/AbstractThumbnailUI;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 192
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 193
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$1;->this$0:Lcom/transsion/camera/app/ui/AbstractThumbnailUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->access$100(Lcom/transsion/camera/app/ui/AbstractThumbnailUI;)Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 194
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$1;->this$0:Lcom/transsion/camera/app/ui/AbstractThumbnailUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->access$200(Lcom/transsion/camera/app/ui/AbstractThumbnailUI;)I

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$1;->this$0:Lcom/transsion/camera/app/ui/AbstractThumbnailUI;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->access$300(Lcom/transsion/camera/app/ui/AbstractThumbnailUI;)I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->access$400(Lcom/transsion/camera/app/ui/AbstractThumbnailUI;II)V

    .line 195
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$1;->this$0:Lcom/transsion/camera/app/ui/AbstractThumbnailUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->access$500(Lcom/transsion/camera/app/ui/AbstractThumbnailUI;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method
