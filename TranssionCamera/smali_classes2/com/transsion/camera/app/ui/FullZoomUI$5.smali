.class Lcom/transsion/camera/app/ui/FullZoomUI$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FullZoomUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/FullZoomUI;->show(Z)V
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

    .line 581
    iput-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI$5;->this$0:Lcom/transsion/camera/app/ui/FullZoomUI;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 584
    iget-object p0, p0, Lcom/transsion/camera/app/ui/FullZoomUI$5;->this$0:Lcom/transsion/camera/app/ui/FullZoomUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/FullZoomUI;->access$700(Lcom/transsion/camera/app/ui/FullZoomUI;)Landroid/view/ViewGroup;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method
