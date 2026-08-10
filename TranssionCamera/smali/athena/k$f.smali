.class Lathena/k$f;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/athena/data/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lathena/k;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/transsion/athena/data/b<",
        "Landroid/util/SparseArray<",
        "Lcom/transsion/athena/config/data/model/a;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lathena/k;


# direct methods
.method constructor <init>(Lathena/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lathena/k$f;->a:Lathena/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Landroid/util/SparseArray;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 4
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_0
    iget-object p0, p0, Lathena/k$f;->a:Lathena/k;

    invoke-static {p0}, Lathena/k;->d(Lathena/k;)Lathena/a;

    move-result-object p0

    invoke-virtual {p0, v0}, Lathena/a;->a(Ljava/util/List;)V

    return-void
.end method
