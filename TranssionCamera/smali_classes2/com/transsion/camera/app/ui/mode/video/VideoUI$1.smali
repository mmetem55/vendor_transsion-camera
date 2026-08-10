.class Lcom/transsion/camera/app/ui/mode/video/VideoUI$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "VideoUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/mode/video/VideoUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/mode/video/VideoUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/mode/video/VideoUI;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI$1;->this$0:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI$1;->this$0:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->access$000(Lcom/transsion/camera/app/ui/mode/video/VideoUI;)Landroid/view/View;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI$1;->this$0:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->access$000(Lcom/transsion/camera/app/ui/mode/video/VideoUI;)Landroid/view/View;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
