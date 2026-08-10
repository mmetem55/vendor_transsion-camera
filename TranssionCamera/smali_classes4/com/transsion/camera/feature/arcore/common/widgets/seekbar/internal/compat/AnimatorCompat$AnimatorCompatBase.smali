.class Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/compat/AnimatorCompat$AnimatorCompatBase;
.super Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/compat/AnimatorCompat;
.source "AnimatorCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/compat/AnimatorCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimatorCompatBase"
.end annotation


# instance fields
.field private final mEndValue:F

.field private final mListener:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/compat/AnimatorCompat$AnimationFrameUpdateListener;


# direct methods
.method public constructor <init>(FFLcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/compat/AnimatorCompat$AnimationFrameUpdateListener;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/compat/AnimatorCompat;-><init>()V

    .line 47
    iput-object p3, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/compat/AnimatorCompat$AnimatorCompatBase;->mListener:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/compat/AnimatorCompat$AnimationFrameUpdateListener;

    .line 48
    iput p2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/compat/AnimatorCompat$AnimatorCompatBase;->mEndValue:F

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    return-void
.end method

.method public isRunning()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setDuration(I)V
    .locals 0

    return-void
.end method

.method public start()V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/compat/AnimatorCompat$AnimatorCompatBase;->mListener:Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/compat/AnimatorCompat$AnimationFrameUpdateListener;

    iget p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/compat/AnimatorCompat$AnimatorCompatBase;->mEndValue:F

    invoke-interface {v0, p0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/compat/AnimatorCompat$AnimationFrameUpdateListener;->onAnimationFrame(F)V

    return-void
.end method
