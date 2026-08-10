.class Lcom/transsion/camera/app/ui/anim/AnimationManager$5;
.super Ljava/lang/Object;
.source "AnimationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/anim/AnimationManager;->inflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/anim/AnimationManager;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/anim/AnimationManager;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager$5;->this$0:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 196
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager$5;->this$0:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->access$400(Lcom/transsion/camera/app/ui/anim/AnimationManager;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090386

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager$5;->this$0:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->access$400(Lcom/transsion/camera/app/ui/anim/AnimationManager;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090385

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    invoke-static {v0, v1}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->access$502(Lcom/transsion/camera/app/ui/anim/AnimationManager;Lcom/transsion/camera/app/ui/view/SwitchAnimView;)Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    .line 201
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager$5;->this$0:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->access$500(Lcom/transsion/camera/app/ui/anim/AnimationManager;)Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    move-result-object v1

    iget-object p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager$5;->this$0:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->access$600(Lcom/transsion/camera/app/ui/anim/AnimationManager;)Landroid/graphics/Rect;

    move-result-object v2

    const/4 v3, 0x0

    const-wide/16 v4, 0x12c

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->updateTargetRect(Landroid/graphics/Rect;ZJLandroid/animation/Animator$AnimatorListener;)V

    return-void
.end method
