.class Lathena/k$k;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lathena/n$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lathena/k;->a(JILjava/util/List;)V
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
    iput-object p1, p0, Lathena/k$k;->a:Lathena/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lathena/x;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lathena/k$k;->a:Lathena/k;

    invoke-static {v0}, Lathena/k;->g(Lathena/k;)Lathena/c0;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lathena/k$k;->a:Lathena/k;

    invoke-static {p0}, Lathena/k;->g(Lathena/k;)Lathena/c0;

    move-result-object p0

    invoke-virtual {p0, p1}, Lathena/c0;->a(Lathena/x;)Z

    :cond_0
    return-void
.end method
