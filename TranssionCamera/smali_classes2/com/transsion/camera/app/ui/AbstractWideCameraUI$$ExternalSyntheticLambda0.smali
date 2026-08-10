.class public final synthetic Lcom/transsion/camera/app/ui/AbstractWideCameraUI$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/app/ui/AbstractWideCameraUI;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/app/ui/AbstractWideCameraUI;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/app/ui/AbstractWideCameraUI;

    iput p2, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/app/ui/AbstractWideCameraUI;

    iget p0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI$$ExternalSyntheticLambda0;->f$1:I

    invoke-static {v0, p0, p1}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->$r8$lambda$Tsbw7XEgbNSf6GlEF5eRNHwVYjw(Lcom/transsion/camera/app/ui/AbstractWideCameraUI;ILandroid/animation/ValueAnimator;)V

    return-void
.end method
