.class public abstract Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/compat/AnimatorCompat;
.super Ljava/lang/Object;
.source "AnimatorCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/compat/AnimatorCompat$AnimatorCompatBase;,
        Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/compat/AnimatorCompat$AnimationFrameUpdateListener;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final create(FFLcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/compat/AnimatorCompat$AnimationFrameUpdateListener;)Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/compat/AnimatorCompat;
    .locals 1

    .line 38
    new-instance v0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/compat/AnimatorCompat$AnimatorCompatBase;

    invoke-direct {v0, p0, p1, p2}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/compat/AnimatorCompat$AnimatorCompatBase;-><init>(FFLcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/compat/AnimatorCompat$AnimationFrameUpdateListener;)V

    return-object v0
.end method


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract isRunning()Z
.end method

.method public abstract setDuration(I)V
.end method

.method public abstract start()V
.end method
