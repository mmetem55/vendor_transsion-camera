.class public final synthetic Lcom/transsion/camera/app/ui/HintUI$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/app/ui/HintUI;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/widget/FrameLayout;

.field public final synthetic f$3:Landroid/widget/FrameLayout;

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/app/ui/HintUI;ILandroid/widget/FrameLayout;Landroid/widget/FrameLayout;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/HintUI$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/app/ui/HintUI;

    iput p2, p0, Lcom/transsion/camera/app/ui/HintUI$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lcom/transsion/camera/app/ui/HintUI$$ExternalSyntheticLambda0;->f$2:Landroid/widget/FrameLayout;

    iput-object p4, p0, Lcom/transsion/camera/app/ui/HintUI$$ExternalSyntheticLambda0;->f$3:Landroid/widget/FrameLayout;

    iput p5, p0, Lcom/transsion/camera/app/ui/HintUI$$ExternalSyntheticLambda0;->f$4:I

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUI$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/app/ui/HintUI;

    iget v1, p0, Lcom/transsion/camera/app/ui/HintUI$$ExternalSyntheticLambda0;->f$1:I

    iget-object v2, p0, Lcom/transsion/camera/app/ui/HintUI$$ExternalSyntheticLambda0;->f$2:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/HintUI$$ExternalSyntheticLambda0;->f$3:Landroid/widget/FrameLayout;

    iget v4, p0, Lcom/transsion/camera/app/ui/HintUI$$ExternalSyntheticLambda0;->f$4:I

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/transsion/camera/app/ui/HintUI;->$r8$lambda$Y7nv3e3i6V8fU9Jeh8ELHmqeKqA(Lcom/transsion/camera/app/ui/HintUI;ILandroid/widget/FrameLayout;Landroid/widget/FrameLayout;ILandroid/animation/ValueAnimator;)V

    return-void
.end method
