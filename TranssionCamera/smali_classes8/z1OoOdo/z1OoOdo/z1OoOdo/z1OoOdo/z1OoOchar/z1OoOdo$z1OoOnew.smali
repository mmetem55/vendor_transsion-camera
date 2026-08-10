.class public final Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOdo$z1OoOnew;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOdo$z1OoOtry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOdo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "z1OoOnew"
.end annotation


# instance fields
.field public final z1OoOdo:Landroid/view/Choreographer;

.field public final z1OoOif:Landroid/os/Looper;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOdo$z1OoOnew;->z1OoOdo:Landroid/view/Choreographer;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOdo$z1OoOnew;->z1OoOif:Landroid/os/Looper;

    return-void
.end method

.method public static synthetic z1OoOdo(Ljava/lang/Runnable;J)V
    .locals 0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method


# virtual methods
.method public z1OoOdo(Ljava/lang/Runnable;)V
    .locals 1

    iget-object p0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOdo$z1OoOnew;->z1OoOdo:Landroid/view/Choreographer;

    new-instance v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOdo$z1OoOnew$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOdo$z1OoOnew$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method

.method public z1OoOdo()Z
    .locals 1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object p0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOdo$z1OoOnew;->z1OoOif:Landroid/os/Looper;

    invoke-virtual {p0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
