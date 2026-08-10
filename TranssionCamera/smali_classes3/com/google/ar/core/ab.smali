.class final Lcom/google/ar/core/ab;
.super Ljava/lang/Object;
.source "InstallServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic b:Lcom/google/ar/core/ac;


# direct methods
.method constructor <init>(Lcom/google/ar/core/ac;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ar/core/ab;->b:Lcom/google/ar/core/ac;

    iput-object p2, p0, Lcom/google/ar/core/ab;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/ar/core/ab;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ARCore-InstallService"

    const-string v1, "requestInstall timed out, launching fullscreen."

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/google/ar/core/ab;->b:Lcom/google/ar/core/ac;

    iget-object v0, p0, Lcom/google/ar/core/ac;->c:Lcom/google/ar/core/u;

    iget-object v1, p0, Lcom/google/ar/core/ac;->a:Landroid/app/Activity;

    iget-object p0, p0, Lcom/google/ar/core/ac;->b:Lcom/google/ar/core/s;

    .line 3
    invoke-static {v0, v1, p0}, Lcom/google/ar/core/u;->i(Lcom/google/ar/core/u;Landroid/app/Activity;Lcom/google/ar/core/s;)V

    :cond_0
    return-void
.end method
