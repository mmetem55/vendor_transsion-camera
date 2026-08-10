.class public final synthetic Lcom/transsion/camera/utils/AnimationUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic f$0:Landroid/view/View;

.field public final synthetic f$1:F

.field public final synthetic f$2:Landroid/animation/AnimatorListenerAdapter;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/utils/AnimationUtils$$ExternalSyntheticLambda0;->f$0:Landroid/view/View;

    iput p2, p0, Lcom/transsion/camera/utils/AnimationUtils$$ExternalSyntheticLambda0;->f$1:F

    iput-object p3, p0, Lcom/transsion/camera/utils/AnimationUtils$$ExternalSyntheticLambda0;->f$2:Landroid/animation/AnimatorListenerAdapter;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/transsion/camera/utils/AnimationUtils$$ExternalSyntheticLambda0;->f$0:Landroid/view/View;

    iget v1, p0, Lcom/transsion/camera/utils/AnimationUtils$$ExternalSyntheticLambda0;->f$1:F

    iget-object p0, p0, Lcom/transsion/camera/utils/AnimationUtils$$ExternalSyntheticLambda0;->f$2:Landroid/animation/AnimatorListenerAdapter;

    invoke-static {v0, v1, p0, p1, p2}, Lcom/transsion/camera/utils/AnimationUtils;->$r8$lambda$VQhvSuz9-g40Nvmt-9uepGuD_NE(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
