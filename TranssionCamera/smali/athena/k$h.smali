.class Lathena/k$h;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lathena/k;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lathena/k;


# direct methods
.method constructor <init>(Lathena/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lathena/k$h;->a:Lathena/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lathena/k$h;->a:Lathena/k;

    invoke-static {p0}, Lathena/k;->e(Lathena/k;)Lathena/n;

    move-result-object p0

    invoke-virtual {p0}, Lathena/n;->b()V

    const/4 p0, 0x1

    return p0
.end method
