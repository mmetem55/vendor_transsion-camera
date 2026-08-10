.class public final synthetic Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Landroid/widget/FrameLayout$LayoutParams;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;ZLandroid/widget/FrameLayout$LayoutParams;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;

    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI$$ExternalSyntheticLambda0;->f$1:Z

    iput-object p3, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI$$ExternalSyntheticLambda0;->f$2:Landroid/widget/FrameLayout$LayoutParams;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI$$ExternalSyntheticLambda0;->f$1:Z

    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI$$ExternalSyntheticLambda0;->f$2:Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v0, v1, p0, p1}, Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;->$r8$lambda$Uc82m-fUc055Gg7S9FKRujO84SM(Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;ZLandroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V

    return-void
.end method
