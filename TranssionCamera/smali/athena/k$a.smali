.class Lathena/k$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/athena/data/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lathena/k;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/transsion/athena/data/b<",
        "Landroid/util/LongSparseArray<",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lathena/k;


# direct methods
.method constructor <init>(Lathena/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lathena/k$a;->a:Lathena/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 6

    .line 1
    check-cast p1, Landroid/util/LongSparseArray;

    .line 2
    sget-object v0, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveMemCacheToDb tidCountArray = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lathena/k$a;->a:Lathena/k;

    invoke-static {v0}, Lathena/k;->h(Lathena/k;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-virtual {p1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 5
    invoke-virtual {p1, v0}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v1

    .line 6
    iget-object v3, p0, Lathena/k$a;->a:Lathena/k;

    invoke-static {v3}, Lathena/k;->d(Lathena/k;)Lathena/a;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lathena/a;->c(J)Lcom/transsion/athena/config/data/model/TidConfigBean;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 8
    invoke-virtual {v3}, Lcom/transsion/athena/config/data/model/TidConfigBean;->getTidConfig()Lcom/transsion/athena/config/data/model/g;

    move-result-object v4

    invoke-virtual {p1, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/transsion/athena/config/data/model/g;->a(I)V

    .line 10
    invoke-virtual {v3}, Lcom/transsion/athena/config/data/model/TidConfigBean;->getEvent()Ljava/lang/String;

    move-result-object v3

    const-string v4, "device"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 11
    invoke-static {v1, v2}, Lathena/k0;->a(J)I

    move-result v1

    const/16 v2, 0x270f

    if-ne v2, v1, :cond_0

    .line 12
    iget-object v1, p0, Lathena/k$a;->a:Lathena/k;

    invoke-static {v1}, Lathena/k;->d(Lathena/k;)Lathena/a;

    move-result-object v1

    invoke-virtual {v1}, Lathena/a;->i()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
