.class Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$2;
.super Ljava/lang/Object;
.source "TimeLapseRateSingleUI.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->fadeOut()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;)V
    .locals 0

    .line 442
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$2;->this$0:Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;

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

    .line 450
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$2;->this$0:Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->access$800(Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 451
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$2;->this$0:Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->access$902(Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;Z)Z

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
