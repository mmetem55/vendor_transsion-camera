.class final Lcom/google/ar/core/i;
.super Ljava/lang/Object;
.source "ArCoreApkImpl.java"

# interfaces
.implements Lcom/google/ar/core/h;


# instance fields
.field final synthetic a:Lcom/google/ar/core/j;


# direct methods
.method constructor <init>(Lcom/google/ar/core/j;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ar/core/i;->a:Lcom/google/ar/core/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/ar/core/ArCoreApk$Availability;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/ar/core/i;->a:Lcom/google/ar/core/j;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/ar/core/i;->a:Lcom/google/ar/core/j;

    invoke-static {v1, p1}, Lcom/google/ar/core/j;->c(Lcom/google/ar/core/j;Lcom/google/ar/core/ArCoreApk$Availability;)V

    iget-object p0, p0, Lcom/google/ar/core/i;->a:Lcom/google/ar/core/j;

    .line 2
    invoke-static {p0}, Lcom/google/ar/core/j;->f(Lcom/google/ar/core/j;)V

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
