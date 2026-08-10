.class Lcom/transsion/camera/app/ui/view/SwitchAnimView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SwitchAnimView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/view/SwitchAnimView;->updateTargetRect(Landroid/graphics/Rect;ZJLandroid/animation/Animator$AnimatorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

.field final synthetic val$previewRect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/view/SwitchAnimView;Landroid/graphics/Rect;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView$2;->this$0:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView$2;->val$previewRect:Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 186
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView$2;->this$0:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView$2;->val$previewRect:Landroid/graphics/Rect;

    invoke-static {p1, p0}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->access$200(Lcom/transsion/camera/app/ui/view/SwitchAnimView;Landroid/graphics/Rect;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 191
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView$2;->this$0:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView$2;->val$previewRect:Landroid/graphics/Rect;

    invoke-static {p1, p0}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->access$200(Lcom/transsion/camera/app/ui/view/SwitchAnimView;Landroid/graphics/Rect;)V

    return-void
.end method
