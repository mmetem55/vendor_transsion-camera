.class Lathena/k$i;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lathena/k;->g()V
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
    iput-object p1, p0, Lathena/k$i;->a:Lathena/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 1
    iget-object p0, p0, Lathena/k$i;->a:Lathena/k;

    invoke-static {p0}, Lathena/k;->f(Lathena/k;)V

    return-void
.end method
