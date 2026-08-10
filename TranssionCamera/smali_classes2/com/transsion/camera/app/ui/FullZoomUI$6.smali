.class Lcom/transsion/camera/app/ui/FullZoomUI$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FullZoomUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/FullZoomUI;->startTranslateXWithAnimation(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/FullZoomUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/FullZoomUI;)V
    .locals 0

    .line 647
    iput-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI$6;->this$0:Lcom/transsion/camera/app/ui/FullZoomUI;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 650
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 651
    iget-object p0, p0, Lcom/transsion/camera/app/ui/FullZoomUI$6;->this$0:Lcom/transsion/camera/app/ui/FullZoomUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/FullZoomUI;->access$800(Lcom/transsion/camera/app/ui/FullZoomUI;)Landroid/view/View;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
