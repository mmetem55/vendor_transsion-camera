.class public final synthetic Lcom/transsion/camera/app/ui/AbstractHintUI$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/app/ui/AbstractHintUI;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$$ExternalSyntheticLambda3;->f$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    iput p2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$$ExternalSyntheticLambda3;->f$1:I

    iput p3, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$$ExternalSyntheticLambda3;->f$2:I

    iput p4, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$$ExternalSyntheticLambda3;->f$3:I

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$$ExternalSyntheticLambda3;->f$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    iget v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$$ExternalSyntheticLambda3;->f$1:I

    iget v2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$$ExternalSyntheticLambda3;->f$2:I

    iget p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$$ExternalSyntheticLambda3;->f$3:I

    invoke-static {v0, v1, v2, p0, p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->$r8$lambda$yEekjOf3FYRCVtYC1SS_VWD_8rw(Lcom/transsion/camera/app/ui/AbstractHintUI;IIILandroid/animation/ValueAnimator;)V

    return-void
.end method
