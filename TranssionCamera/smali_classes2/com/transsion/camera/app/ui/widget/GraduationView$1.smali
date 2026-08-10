.class Lcom/transsion/camera/app/ui/widget/GraduationView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "GraduationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/widget/GraduationView;->animate(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/widget/GraduationView;

.field final synthetic val$end:F


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/widget/GraduationView;F)V
    .locals 0

    .line 707
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView$1;->this$0:Lcom/transsion/camera/app/ui/widget/GraduationView;

    iput p2, p0, Lcom/transsion/camera/app/ui/widget/GraduationView$1;->val$end:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .line 710
    invoke-static {}, Lcom/transsion/camera/app/ui/widget/GraduationView;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAnimationCancel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView$1;->this$0:Lcom/transsion/camera/app/ui/widget/GraduationView;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/widget/GraduationView;->access$100(Lcom/transsion/camera/app/ui/widget/GraduationView;)F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 711
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView$1;->this$0:Lcom/transsion/camera/app/ui/widget/GraduationView;

    iget p0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView$1;->val$end:F

    invoke-static {p1, p0}, Lcom/transsion/camera/app/ui/widget/GraduationView;->access$102(Lcom/transsion/camera/app/ui/widget/GraduationView;F)F

    return-void
.end method
