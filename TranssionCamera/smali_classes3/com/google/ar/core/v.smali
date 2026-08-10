.class final Lcom/google/ar/core/v;
.super Ljava/lang/Object;
.source "InstallServiceImpl.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/google/ar/core/u;


# direct methods
.method constructor <init>(Lcom/google/ar/core/u;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ar/core/v;->a:Lcom/google/ar/core/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/ar/core/v;->a:Lcom/google/ar/core/u;

    invoke-static {p0, p2}, Lcom/google/ar/core/u;->g(Lcom/google/ar/core/u;Landroid/os/IBinder;)V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/ar/core/v;->a:Lcom/google/ar/core/u;

    invoke-static {p0}, Lcom/google/ar/core/u;->h(Lcom/google/ar/core/u;)V

    return-void
.end method
